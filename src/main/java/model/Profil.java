package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Profil extends ObjectBase<Profil> {
    private String id;
    private String nom_profil;

    public static ArrayList<Profil> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Profil().findAll(co);
        }
    }

    public Profil() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_profil() {
        return nom_profil;
    }

    public void setNom_profil(String nom_profil) {
        this.nom_profil = nom_profil;
    }

}
