/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package primeralgoritmo;


/**
 *
 * @author dell
 */
public class Alimento {
    private String porcion;
    private String uom;
    private double kcal;
    private double proteinas;
    private double carbos;
    private double grasas;
    private String grupo;
    private String nomAl;

    public String getNomAl() {
        return nomAl;
    }

    public void setNomAl(String nomAl) {
        this.nomAl = nomAl;
    }

    public Alimento(){}

    public String getUom() {
        return uom;
    }

    public void setUom(String uom) {
        this.uom = uom;
    }
    
    public double getCarbos() {
        return carbos;
    }

    public void setCarbos(double carbos) {
        this.carbos = carbos;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }
    
    public Alimento(double p,double c, double g){
        this.carbos=c;
        this.grasas=g;
        this.proteinas=p;
        this.kcal=(long)((long)(p*4)+(c*4)+(g*4));
        this.porcion="1";
    }

    public double getGrasas() {
        return grasas;
    }

    public void setGrasas(double grasas) {
        this.grasas = grasas;
    }


    public double getProteinas() {
        return proteinas;
    }

    public void setProteinas(double proteinas) {
        this.proteinas = proteinas;
    }
    
    public String getPorcion(){
    return porcion;
    }
     public void setPorcion(String k){
    this.porcion=k;
    }
         public double getkcal(){
    return kcal;
    }
     public void setKcal(double k){
    this.kcal=k;
    }
}
