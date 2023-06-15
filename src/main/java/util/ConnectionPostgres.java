package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPostgres {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:postgresql://localhost:5432/sambo";
        String user = "postgres";
        String password = "root";
        String className = "org.postgresql.Driver";

        Class.forName(className);
        return DriverManager.getConnection(url, user, password);
    }
}
