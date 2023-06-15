package model;

import util.ObjectBase;

public class V_detail_escale extends ObjectBase<V_detail_escale> {
    private String id;
    private String id_navire;
    private String id_quai;
    private String entree;
    private String sortie;

    public V_detail_escale() {
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

    public String getEntree() {
        return entree;
    }

    public void setEntree(String entree) {
        this.entree = entree;
    }

    public String getSortie() {
        return sortie;
    }

    public void setSortie(String sortie) {
        this.sortie = sortie;
    }

}