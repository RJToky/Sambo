package model;

import util.ObjectBase;

public class Facture_prestation extends ObjectBase<Facture_prestation> {
    private String id;
    private String id_facture;
    private String id_prestation;
    private double montant;

    public Facture_prestation() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_facture() {
        return id_facture;
    }

    public void setId_facture(String id_facture) {
        this.id_facture = id_facture;
    }

    public String getId_prestation() {
        return id_prestation;
    }

    public void setId_prestation(String id_prestation) {
        this.id_prestation = id_prestation;
    }

    public double getMontant() {
        return montant;
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }

}
