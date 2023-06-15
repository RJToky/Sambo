package model;

import util.ObjectBase;

public class Prestation extends ObjectBase<Prestation> {
    private String id;
    private String nom_prestation;
    private double prix_national;
    private double prix_international;

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