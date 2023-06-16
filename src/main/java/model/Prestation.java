package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Prestation extends ObjectBase<Prestation> {
    private String id;
    private String nom_prestation;
    private double ariary;
    private double euro;
    private int lineaire_apartir;
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

    public double getAriary() {
        return ariary;
    }

    public void setAriary(double ariary) {
        this.ariary = ariary;
    }

    public double getEuro() {
        return euro;
    }

    public void setEuro(double euro) {
        this.euro = euro;
    }

    public int getLineaire_apartir() {
        return lineaire_apartir;
    }

    public void setLineaire_apartir(int lineaire_apartir) {
        this.lineaire_apartir = lineaire_apartir;
    }

    public int getTranche() {
        return tranche;
    }

    public void setTranche(int tranche) {
        this.tranche = tranche;
    }

}