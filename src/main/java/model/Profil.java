package model;

import util.ObjectBase;

public class Profil extends ObjectBase<Profil> {
    private String id;
    private String nom_profil;

    public Profil() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getNom_profil() {
        return nom_profil;
    }

    public void setNom_profil(String nom_profil) {
        this.nom_profil = nom_profil;
    }

}
