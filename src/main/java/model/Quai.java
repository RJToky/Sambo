package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Quai extends ObjectBase<Quai> {
    private String id;
    private String nom_quai;
    private double profondeur;

    public void insertQuai() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
    }

    public ArrayList<Quai> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Quai().findAll(co);
        }
    }

    public Quai(String nom_quai, double profondeur) {
        this.nom_quai = nom_quai;
        this.profondeur = profondeur;
    }

    public Quai() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_quai() {
        return nom_quai;
    }

    public void setNom_quai(String nom_quai) {
        this.nom_quai = nom_quai;
    }

    public double getProfondeur() {
        return profondeur;
    }

    public void setProfondeur(double profondeur) {
        this.profondeur = profondeur;
    }

}
