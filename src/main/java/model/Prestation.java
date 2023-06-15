package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Prestation extends ObjectBase<Prestation> {
    private String id;
    private String nom_prestation;
    private double prix_national;
    private double prix_international;

    public static ArrayList<Prestation> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Prestation().findAll(co);
        }
    }

    public Prestation() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_prestation() {
        return nom_prestation;
    }

    public void setNom_prestation(String nom_prestation) {
        this.nom_prestation = nom_prestation;
    }

    public double getPrix_national() {
        return prix_national;
    }

    public void setPrix_national(double prix_national) {
        this.prix_national = prix_national;
    }

    public double getPrix_international() {
        return prix_international;
    }

    public void setPrix_international(double prix_international) {
        this.prix_international = prix_international;
    }

}