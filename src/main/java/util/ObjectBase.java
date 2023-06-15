package util;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.*;
import java.util.ArrayList;
import java.util.Vector;

@SuppressWarnings("unchecked")
public class ObjectBase<T> {
    ArrayList<String> fields_name = new ArrayList<>(), values = new ArrayList<>();
    String field_name = "", value = "";
    String request = "";

    public void setUpdate(String field_name, String value) throws Exception {
        if (field_name != null) {
            Field[] fields = this.getClass().getDeclaredFields();
            for (Field field : fields) {
                if (field.getName().equalsIgnoreCase(field_name)) {
                    this.field_name = field_name;
                    this.value = value;
                    return;
                }
            }
        }
        throw new Exception("Attribut introuvable");
    }

    public void setSelection(String field_name, String value) throws Exception {
        if (field_name != null) {
            Field[] fields = this.getClass().getDeclaredFields();
            for (Field field : fields) {
                if (field.getName().equalsIgnoreCase(field_name)) {
                    this.fields_name.add(field_name);
                    this.values.add(value);
                    return;
                }
            }
        }
        throw new Exception("Attribut introuvable");
    }

    public void insert(Connection co) throws Exception {
        String nameClass = this.getClass().getSimpleName();
        Field[] fields = this.getClass().getDeclaredFields();

        int countColumn = this.getColumnCount(co);
        Object[] obj = new Object[countColumn];
        // obj[0] = "/DEFAULT/";
        obj[0] = sequenceNextValue(co);

        Method met = null;
        for (int i = 1; i < obj.length; i++) {
            met = this.getClass().getDeclaredMethod("get" + toCapitalize(fields[i].getName()));
            obj[i] = met.invoke(this);
        }

        StringBuilder exec = new StringBuilder();
        exec.append("INSERT INTO ").append(nameClass).append(" VALUES (");
        for (Object o : obj) {
            if (o == null) {
                exec.append("null,");
            } else if (String.valueOf(o).equals("/DEFAULT/")) {
                exec.append("DEFAULT,");
            } else {
                exec.append("'").append(o).append("',");
            }
        }
        exec.deleteCharAt(exec.length() - 1);
        exec.append(")");

        this.request = exec.toString();
        this.execute(co, this.request);
    }

    public void insert(Connection co, boolean showRequest) throws Exception {
        try {
            this.insert(co);
        } catch (Exception e) {
            throw e;
        } finally {
            if (showRequest) {
                System.out.println(this.request);
            }
        }
    }

    public ArrayList<T> select(Connection co) throws Exception {
        String nameClass = this.getClass().getSimpleName();
        Field[] fields = this.getClass().getDeclaredFields();

        StringBuilder exec = new StringBuilder();
        exec.append("SELECT * FROM ").append(nameClass);
        if (fields_name.size() != 0) {
            exec.append(" WHERE (");
        }

        int countColumn = this.getColumnCount(co);
        boolean match = false;

        for (int i = 0; i < countColumn; i++) {
            for (int j = 0; j < fields_name.size(); j++) {
                if (fields[i].getName().equalsIgnoreCase(fields_name.get(j))) {
                    exec.append(fields_name.get(j));
                    if (values.get(j) == null) {
                        exec.append(" IS NULL OR ");
                    } else {
                        exec.append(" = '").append(values.get(j)).append("' OR ");
                    }
                    match = true;
                }
            }
            if (match) {
                exec.delete(exec.length() - 4, exec.length());
                exec.append(") AND (");
                match = false;
            }
        }

        if (fields_name.size() != 0) {
            exec.delete(exec.length() - 6, exec.length());
        }
        exec.append(" ORDER BY ").append(fields[0].getName());

        this.request = exec.toString();
        ArrayList<T> output = this.select(co, this.request);

        return output;
    }

    public ArrayList<T> select(Connection co, boolean showRequest) throws Exception {
        ArrayList<T> output = null;
        try {
            output = this.select(co);
        } catch (Exception e) {
            throw e;
        } finally {
            if (showRequest) {
                System.out.println(this.request);
            }
        }
        return output;
    }

    public void update(Connection co) throws Exception {
        String nameClass = this.getClass().getSimpleName();
        Field[] fields = this.getClass().getDeclaredFields();

        StringBuilder exec = new StringBuilder();
        if (fields_name.size() == 0) {
            throw new Exception("Aucune ligne selectionnee");
        }

        exec.append("UPDATE ")
                .append(nameClass)
                .append(" SET ")
                .append(this.field_name)
                .append(" = '")
                .append(this.value)
                .append("' WHERE (");

        int countColumn = this.getColumnCount(co);
        boolean match = false;

        for (int i = 0; i < countColumn; i++) {
            for (int j = 0; j < fields_name.size(); j++) {
                if (fields[i].getName().equalsIgnoreCase(fields_name.get(j))) {
                    exec.append(fields_name.get(j));
                    if (values.get(j) == null) {
                        exec.append(" IS NULL OR ");
                    } else {
                        exec.append(" = '").append(values.get(j)).append("' OR ");
                    }
                    match = true;
                }
            }
            if (match) {
                exec.delete(exec.length() - 4, exec.length());
                exec.append(") AND (");
                match = false;
            }
        }
        exec.delete(exec.length() - 6, exec.length());

        this.request = exec.toString();
        this.execute(co, this.request);
    }

    public void update(Connection co, boolean showRequest) throws Exception {
        try {
            this.update(co);
        } catch (Exception e) {
            throw e;
        } finally {
            if (showRequest) {
                System.out.println(this.request);
            }
        }
    }

    public void execute(Connection co, String exec) throws Exception {
        Statement smt = co.createStatement();
        smt.executeUpdate(exec);
    }

    public ArrayList<T> select(Connection co, String exec) throws Exception {
        Statement smt = co.createStatement();
        ResultSet res = smt.executeQuery(exec);

        int countColumn = this.getColumnCount(co);
        Field[] fields = this.getClass().getDeclaredFields();
        Vector<ObjectBase> listObjectBase = new Vector<>();
        ObjectBase tempObjectBase;
        Class<?> type;
        Method met;
        Method metRes;

        while (res.next()) {
            tempObjectBase = this.getClass().getConstructor().newInstance();

            for (int i = 0; i < countColumn; i++) {
                type = this.getClass().getDeclaredFields()[i].getType();
                String typeName = toCapitalize(fields[i].getType().getSimpleName());

                if (typeName.equalsIgnoreCase("Integer")) {
                    typeName = typeName.substring(0, 3);
                }

                met = tempObjectBase.getClass().getDeclaredMethod("set" + toCapitalize(fields[i].getName()), type);
                metRes = res.getClass().getMethod("get" + typeName, int.class);
                metRes.setAccessible(true);
                met.invoke(tempObjectBase, metRes.invoke(res, i + 1));
            }
            listObjectBase.add(tempObjectBase);
        }

        ArrayList<T> output = new ArrayList<T>();
        for (int i = 0; i < listObjectBase.size(); i++) {
            output.add((T) listObjectBase.get(i));
        }

        return output;
    }

    public T findById(Connection co, String id) throws Exception {
        String nameClass = this.getClass().getSimpleName();
        String exec = "SELECT * FROM " + nameClass + " WHERE id = '" + id.trim() + "'";
        this.request = exec;

        T output = null;
        try {
            output = this.select(co, this.request).get(0);
        } catch (Exception e) {
            System.out.println(this.request);
            throw e;
        }
        return output;
    }

    public ArrayList<T> findAll(Connection co) throws Exception {
        String nameClass = this.getClass().getSimpleName();
        String exec = "SELECT * FROM " + nameClass;
        this.request = exec;

        ArrayList<T> output = null;
        try {
            output = this.select(co, this.request);
        } catch (Exception e) {
            System.out.println(this.request);
            throw e;
        }
        return output;
    }

    private static String toCapitalize(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    private int getColumnCount(Connection co) throws SQLException {
        String sql = "select * from " + this.getClass().getSimpleName();
        Statement stmt = co.createStatement();
        ResultSet res = stmt.executeQuery(sql);
        ResultSetMetaData resMeta = res.getMetaData();

        return resMeta.getColumnCount();
    }

    private void createSequence(Connection co) {
        String nameClass = this.getClass().getSimpleName();

        StringBuilder exec = new StringBuilder();
        exec.append("CREATE SEQUENCE ").append(nameClass).append("_id_seq");

        try {
            Statement smt = co.createStatement();
            smt.executeUpdate(exec.toString());

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String sequenceNextValue(Connection co) {
        StringBuilder seq = new StringBuilder();
        String nameClass = this.getClass().getSimpleName().toLowerCase();

        StringBuilder exec = new StringBuilder();

        try {
            if (co.toString().contains("oracle")) {
                exec.append("SELECT ").append(nameClass).append("_id_seq.nextVal FROM DUAL");
            } else if (co.toString().contains("postgresql")) {
                exec.append("SELECT nextval('").append(nameClass).append("_id_seq')");
            }

            Statement smt = co.createStatement();
            ResultSet res;
            try {
                res = smt.executeQuery(exec.toString());
            } catch (Exception e) {
                createSequence(co);
                res = smt.executeQuery(exec.toString());
            }

            seq = new StringBuilder();
            seq.append(nameClass.toLowerCase()).append("_");

            String value = "";
            while (res.next()) {
                value = res.getString(1);
            }

            int zero = 3 - value.length();
            int i = 0;
            while (i < zero) {
                seq.append("0");
                i++;
            }
            seq.append(value);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return seq.toString();
    }

}
