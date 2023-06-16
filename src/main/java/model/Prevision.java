package model;

public class Prevision {
    private String id_navire;
    private String date_entree;
    private String date_sortie;

    public Prevision(String id_navire, String date_entree, String date_sortie) {
        this.id_navire = id_navire;
        this.date_entree = date_entree;
        this.date_sortie = date_sortie;
    }

    public String getId_navire() {
        return id_navire;
    }

    public void setId_navire(String id_navire) {
        this.id_navire = id_navire;
    }

    public String getDate_entree() {
        return date_entree;
    }

    public void setDate_entree(String date_entree) {
        this.date_entree = date_entree;
    }

    public String getDate_sortie() {
        return date_sortie;
    }

    public void setDate_sortie(String date_sortie) {
        this.date_sortie = date_sortie;
    }

}
