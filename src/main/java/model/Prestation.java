package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Prestation extends ObjectBase<Prestation> {
    private String id;
    private String nom_prestation;
    private String seuil;
    private int tranche;

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

    public String getSeuil() {
        return seuil;
    }

    public void setSeuil(String seuil) {
        this.seuil = seuil;
    }

    public int getTranche() {
        return tranche;
    }

    public void setTranche(int tranche) {
        this.tranche = tranche;
    }

}