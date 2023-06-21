package model;

import java.sql.Connection;

import util.ConnectionPostgres;
import util.ObjectBase;

public class Prestation_escale extends ObjectBase<Prestation_escale> {
    private String id;
    private String id_escale;
    private String id_quai;
    private String id_prestation;
    private String debut;
    private String fin;
    private int etat;

    public void insertPrestation_escale() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
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

    public String getId_quai() {
        return id_quai;
    }

    public void setId_quai(String id_quai) {
        this.id_quai = id_quai;
    }

    public String getId_prestation() {
        return id_prestation;
    }

    public void setId_prestation(String id_prestation) {
        this.id_prestation = id_prestation;
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