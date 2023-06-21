package model;

import java.sql.Connection;
import java.util.ArrayList;

import util.ConnectionPostgres;
import util.ObjectBase;

public class Escale extends ObjectBase<Escale> {
    private String id;
    private String id_navire;
    private String date_entree;
    private String date_sortie;

    public static ArrayList<Escale> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Escale().findAll(co);
        }
    }

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

    public Escale(String id_navire, String date_entree, String date_sortie) {
        this.id_navire = id_navire;
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