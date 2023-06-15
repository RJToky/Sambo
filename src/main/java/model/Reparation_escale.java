package model;

import util.ObjectBase;

public class Reparation_escale extends ObjectBase<Reparation_escale> {
    private String id;
    private String id_escale;

    public Reparation_escale() {
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

}