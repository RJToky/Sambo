package model;

public class Proposition {
    private String id_quai;
    private String nom_quai;
    private String date_entree;
    private String date_sortie;

    private double cout_stationnement;
    private double cout_remorquage;
    private double montant;

    public Proposition(Prevision prevision) {

    }

    public Proposition() {
    }

    public String getId_quai() {
        return id_quai;
    }

    public void setId_quai(String id_quai) {
        this.id_quai = id_quai;
    }

    public String getNom_quai() {
        return nom_quai;
    }

    public void setNom_quai(String nom_quai) {
        this.nom_quai = nom_quai;
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

    public double getMontant() {
        return this.getCout_stationnement() + this.getCout_remorquage();
    }

    public void setMontant(double montant) {
        this.montant = montant;
    }

    public double getCout_stationnement() {
        return cout_stationnement;
    }

    public void setCout_stationnement(double cout_stationnement) {
        this.cout_stationnement = cout_stationnement;
    }

    public double getCout_remorquage() {
        return cout_remorquage;
    }

    public void setCout_remorquage(double cout_remorquage) {
        this.cout_remorquage = cout_remorquage;
    }

}
