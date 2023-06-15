package model;

import util.ObjectBase;

public class Prix_remorquage extends ObjectBase<Prix_remorquage> {
    private String id;
    private double augmentation;
    private double tranche;
    private double seuil;

    public Prix_remorquage() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public double getAugmentation() {
        return augmentation;
    }

    public void setAugmentation(double augmentation) {
        this.augmentation = augmentation;
    }

    public double getTranche() {
        return tranche;
    }

    public void setTranche(double tranche) {
        this.tranche = tranche;
    }

    public double getSeuil() {
        return seuil;
    }

    public void setSeuil(double seuil) {
        this.seuil = seuil;
    }

}