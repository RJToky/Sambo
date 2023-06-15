package model;

import util.ObjectBase;

public class Prestation extends ObjectBase<Prestation> {
    private String id;
    private String nom_prestation;

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

}