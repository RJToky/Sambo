package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Type_navire extends ObjectBase<Type_navire> {
    private String id;
    private String type;
    private double prix;

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

}