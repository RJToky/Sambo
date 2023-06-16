package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Pavillon extends ObjectBase<Pavillon> {
    private String id;
    private String nom_pavillon;

    public static ArrayList<Pavillon> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Pavillon().findAll(co);
        }
    }

    public Pavillon() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_pavillon() {
        return nom_pavillon;
    }

    public void setNom_pavillon(String nom_pavillon) {
        this.nom_pavillon = nom_pavillon;
    }

}