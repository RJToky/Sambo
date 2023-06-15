package model;

import util.ConnectionPostgres;
import util.ObjectBase;

import java.sql.Connection;
import java.util.ArrayList;

public class Navire extends ObjectBase<Navire> {
    private String id;
    private String nom_navire;
    private String id_type_navire;
    private String id_pavillon;
    private double profondeur;
    private double duree_remorquage;

    // Test
    public static void main(String[] args) {
        try (Connection co = ConnectionPostgres.getConnection()) {
            ArrayList<Navire> allNavire = new Navire().findAll();
            for (Navire navire : allNavire) {
                System.out.println(navire.getId() + " " + navire.getNom_navire() + " " + navire.getId_pavillon() + " "
                        + navire.getProfondeur() + " " + navire.getDuree_remorquage());
            }

            Navire navire2 = new Navire().findById("navire_002");
            System.out.println(navire2.getId() + " " + navire2.getNom_navire() + " " + navire2.getId_pavillon() + " "
                    + navire2.getProfondeur() + " " + navire2.getDuree_remorquage());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Navire> findAll() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Navire().findAll(co);
        }
    }

    public Navire findById(String id) throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            return new Navire().findById(co, id);
        }
    }

    public Navire() {
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

    public String getId_type_navire() {
        return id_type_navire;
    }

    public void setId_type_navire(String id_type_navire) {
        this.id_type_navire = id_type_navire;
    }

}