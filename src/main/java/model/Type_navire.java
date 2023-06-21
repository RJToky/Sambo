package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Type_navire extends ObjectBase<Type_navire> {
    private String id;
    private String nom_type;

    public static ArrayList<Type_navire> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Type_navire().findAll(co);
        }
    }

    public Type_navire() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_type() {
        return nom_type;
    }

    public void setNom_type(String nom_type) {
        this.nom_type = nom_type;
    }

}