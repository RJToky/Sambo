package model;

import util.ObjectBase;

public class Heure_jour extends ObjectBase<Heure_jour> {
    private String id;
    private String debut;
    private String fin;
    private double majoration;

    public Heure_jour() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDebut() {
        return debut;
    }

    public void setDebut(String debut) {
        this.debut = debut;
    }

    public String getFin() {
        return fin;
    }

    public void setFin(String fin) {
        this.fin = fin;
    }

    public double getMajoration() {
        return majoration;
    }

    public void setMajoration(double majoration) {
        this.majoration = majoration;
    }

}
