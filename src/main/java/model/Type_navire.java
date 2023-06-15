package model;

import util.ObjectBase;

public class Type_navire extends ObjectBase<Type_navire> {
    private String id;
    private String type;
    private double prix;

    public Type_navire() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

}