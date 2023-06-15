package model;

import util.ObjectBase;

public class Detail_prestation extends ObjectBase<Detail_prestation> {
    private String id;
    private String id_prestation;
    private double prix_national;
    private double prix_international;

    public Detail_prestation() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_prestation() {
        return id_prestation;
    }

    public void setId_prestation(String id_prestation) {
        this.id_prestation = id_prestation;
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