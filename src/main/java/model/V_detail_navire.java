package model;

import java.sql.Connection;
import java.util.ArrayList;

import util.ConnectionPostgres;
import util.ObjectBase;

public class V_detail_navire extends ObjectBase<V_detail_navire> {
    private String id;
    private String nom_navire;
    private String id_type_navire;
    private String id_pavillon;
    private double profondeur;
    private double duree_remorquage;
    private String type;
    private String nom_pavillon;

    public ArrayList<V_detail_navire> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new V_detail_navire().findAll(co);
        }
    }

    public V_detail_navire() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_navire() {
        return nom_navire;
    }

    public void setNom_navire(String nom_navire) {
        this.nom_navire = nom_navire;
    }

    public String getId_pavillon() {
        return id_pavillon;
    }

    public void setId_pavillon(String id_pavillon) {
        this.id_pavillon = id_pavillon;
    }

    public double getProfondeur() {
        return profondeur;
    }

    public void setProfondeur(double profondeur) {
        this.profondeur = profondeur;
    }

    public double getDuree_remorquage() {
        return duree_remorquage;
    }

    public void setDuree_remorquage(double duree_remorquage) {
        this.duree_remorquage = duree_remorquage;
    }

    public String getNom_pavillon() {
        return nom_pavillon;
    }

    public void setNom_pavillon(String nom_pavillon) {
        this.nom_pavillon = nom_pavillon;
    }

    public String getId_type_navire() {
        return id_type_navire;
    }

    public void setId_type_navire(String id_type_navire) {
        this.id_type_navire = id_type_navire;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}