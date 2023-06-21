package model;

import util.ObjectBase;

public class Tarif extends ObjectBase<Tarif> {
    private String id;
    private String id_prestation;
    private String id_pavillon;
    private String id_type_navire;
    private String id_quai;
    private int debut_tranche;
    private int fin_tranche;
    private double prix;

    public Tarif() {
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

    public String getId_pavillon() {
        return id_pavillon;
    }

    public void setId_pavillon(String id_pavillon) {
        this.id_pavillon = id_pavillon;
    }

    public String getId_type_navire() {
        return id_type_navire;
    }

    public void setId_type_navire(String id_type_navire) {
        this.id_type_navire = id_type_navire;
    }

    public String getId_quai() {
        return id_quai;
    }

    public void setId_quai(String id_quai) {
        this.id_quai = id_quai;
    }

    public int getDebut_tranche() {
        return debut_tranche;
    }

    public void setDebut_tranche(int debut_tranche) {
        this.debut_tranche = debut_tranche;
    }

    public int getFin_tranche() {
        return fin_tranche;
    }

    public void setFin_tranche(int fin_tranche) {
        this.fin_tranche = fin_tranche;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

}
