package model;

import java.sql.Connection;

import util.ConnectionPostgres;
import util.ObjectBase;

public class Escale extends ObjectBase<Escale> {
    private String id;
    private String id_navire;
    private String id_quai;
    private String date_entree;
    private String date_sortie;

    public void insertEscale() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
    }

    public static Escale findByLastId() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Escale().select(co, "select * from escale order by id desc limit 1").get(0);
        }
    }

    public Escale(String id_navire, String id_quai, String date_entree, String date_sortie) {
        this.id_navire = id_navire;
        this.id_quai = id_quai;
        this.date_entree = date_entree;
        this.date_sortie = date_sortie;
    }

    public Escale() {
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

    public String getId_quai() {
        return id_quai;
    }

    public void setId_quai(String id_quai) {
        this.id_quai = id_quai;
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