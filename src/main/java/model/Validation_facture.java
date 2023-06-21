package model;

import util.ObjectBase;

public class Validation_facture extends ObjectBase<Validation_facture> {
    private String id;
    private String id_facture;
    private String date;

    public Validation_facture() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_facture() {
        return id_facture;
    }

    public void setId_facture(String id_facture) {
        this.id_facture = id_facture;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

}
