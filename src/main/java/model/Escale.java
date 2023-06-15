package model;

import util.ObjectBase;

public class Escale extends ObjectBase<Escale> {
    private String id;
    private String id_navire;
    private String id_quai;

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

}