package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Quai extends ObjectBase<Quai> {
    private String id;
    private String nom_quai;
    private double profondeur;

    public static Quai findQuaiMety(String id_navire, String date_entree, String date_sortie)
            throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            String sql = "" +
                    "select quai.* " +
                    "from quai " +
                    "left join escale on escale.id_quai = quai.id " +
                    "where ( quai.profondeur >= (select profondeur from navire where id = '" + id_navire + "')) " +
                    "and ( " +
                    "not (escale.date_entree <= '" + date_entree + "' and '" + date_entree +
                    "' <= escale.date_sortie) and " +
                    "not (escale.date_entree <= '" + date_sortie + "' and '" + date_sortie +
                    "' <= escale.date_sortie) and " +
                    "not ('" + date_entree + "' <= escale.date_entree and escale.date_sortie <= '" + date_sortie + "') "
                    +
                    "or (escale.date_entree is null) " +
                    ") " +
                    "order by profondeur asc " +
                    "limit 1";
            return new Quai().select(co, sql).get(0);
        } catch (Exception e) {
            throw e;
        }
    }

    public void insertQuai() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
    }

    public static ArrayList<Quai> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Quai().findAll(co);
        }
    }

    public Quai(String nom_quai, double profondeur) {
        this.nom_quai = nom_quai;
        this.profondeur = profondeur;
    }

    public Quai() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_quai() {
        return nom_quai;
    }

    public void setNom_quai(String nom_quai) {
        this.nom_quai = nom_quai;
    }

    public double getProfondeur() {
        return profondeur;
    }

    public void setProfondeur(double profondeur) {
        this.profondeur = profondeur;
    }

}
