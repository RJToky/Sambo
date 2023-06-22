package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class V_prestation_escale extends ObjectBase<V_prestation_escale> {
    private String id;
    private String id_escale;
    private String nom_quai;
    private String nom_prestation;
    private String debut;
    private String fin;
    private int etat;

    public static ArrayList<V_prestation_escale> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new V_prestation_escale().findAll(co);
        }
    }

    public V_prestation_escale() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_escale() {
        return id_escale;
    }

    public void setId_escale(String id_escale) {
        this.id_escale = id_escale;
    }

    public String getNom_quai() {
        return nom_quai;
    }

    public void setNom_quai(String nom_quai) {
        this.nom_quai = nom_quai;
    }

    public String getNom_prestation() {
        return nom_prestation;
    }

    public void setNom_prestation(String nom_prestation) {
        this.nom_prestation = nom_prestation;
    }

    public String getDebut() {
        return debut;
    }

    public void setDebut(String debut) {
        this.debut = debut;
    }

    public String getFin() {
        return fin;
    }

    public void setFin(String fin) {
        this.fin = fin;
    }

    public int getEtat() {
        return etat;
    }

    public void setEtat(int etat) {
        this.etat = etat;
    }

}
