package model;

import util.ObjectBase;

public class Validation_prestation extends ObjectBase<Validation_prestation> {
    private String id;
    private String id_prestation;
    private String date;

    public Validation_prestation() {
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
