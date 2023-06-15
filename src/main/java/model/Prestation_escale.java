package model;

import java.sql.Connection;

import util.ConnectionPostgres;
import util.ObjectBase;

public class Prestation_escale extends ObjectBase<Prestation_escale> {
    private String id;
    private String id_escale;
    private String id_prestation;

    public void insertPrestation_escale() throws Exception {
        try (Connection co = ConnectionPostgres.getConnection()) {
            this.insert(co);
        }
    }

    public Prestation_escale(String id_escale, String id_prestation) {
        this.id_escale = id_escale;
        this.id_prestation = id_prestation;
    }

    public Prestation_escale() {
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

    public String getId_prestation() {
        return id_prestation;
    }

    public void setId_prestation(String id_prestation) {
        this.id_prestation = id_prestation;
    }

}