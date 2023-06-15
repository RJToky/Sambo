package model;

import java.sql.Connection;

import util.ConnectionPostgres;
import util.ObjectBase;

public class Prevision extends ObjectBase<Prevision> {
    private String id;
    private String id_navire;
    private String date_entree;
    private String date_sortie;

    public void insertPrevision() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
    }

    public Prevision(String id_navire, String date_entree, String date_sortie) {
        this.id_navire = id_navire;
        this.date_entree = date_entree;
        this.date_sortie = date_sortie;
    }

    public Prevision() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_navire() {
        return id_navire;
    }

    public void setId_navire(String id_navire) {
        this.id_navire = id_navire;
    }

    public String getDate_entree() {
        return date_entree;
    }

    public void setDate_entree(String date_entree) {
        this.date_entree = date_entree;
    }

    public String getDate_sortie() {
        return date_sortie;
    }

    public void setDate_sortie(String date_sortie) {
        this.date_sortie = date_sortie;
    }

}