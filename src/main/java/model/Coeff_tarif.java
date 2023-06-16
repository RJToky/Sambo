package model;

import util.ObjectBase;

public class Coeff_tarif extends ObjectBase<Coeff_tarif> {
    private String id;
    private String id_prestation;
    private String id_pavillon;
    private String id_type_navire;
    private String id_quai;
    private double value;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_prestation() {
        return id_prestation;
    }

    public void setId_prestation(String id_prestation) {
        this.id_prestation = id_prestation;
    }

    public String getId_pavillon() {
        return id_pavillon;
    }

    public void setId_pavillon(String id_pavillon) {
        this.id_pavillon = id_pavillon;
    }

    public String getId_type_navire() {
        return id_type_navire;
    }

    public void setId_type_navire(String id_type_navire) {
        this.id_type_navire = id_type_navire;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public String getId_quai() {
        return id_quai;
    }

    public void setId_quai(String id_quai) {
        this.id_quai = id_quai;
    }

}
