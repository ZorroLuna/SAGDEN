/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package primeralgoritmo;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author dell
 */
public class Funciones {
    public Alimento mutar(Alimento a){
        Alimento aux= new Alimento(0,0,0);
        double g=aux.getGrasas();
        double c=aux.getCarbohidratos();
        double p=aux.getProteina();
        p=p+5;
        g=g+5;
        c=c+5;
        aux.setCarbos(c);
        aux.setGrasas(g);
        aux.setProteinas(p);
        return aux;
    }
    public Alimento seleccion(Alimento a, Alimento b){
       Alimento ab = null;
       if(a.getkcal()==b.getkcal()){
            ab = new Alimento((a.getCarbohidratos()*b.getCarbohidratos())/2,(a.getGrasas()*b.getGrasas())/2,(a.getProteinas()*b.getProteinas())/2);
            return ab;
        }else{
           if(a.getkcal()>b.getkcal()){return a;}
           else{
              return b; 
           }
            
        }
    }
    public List<Alimento> poblacion(double as){
          Random p = new Random();
          Random q = new Random();
          Random r = new Random();
         // Alimento poblacion [] = null;
          Comida pob = new Comida();
          Alimento aux=new Alimento(0,0,0);
          Alimento aux2=new Alimento(0,0,0);
          Alimento aux1=new Alimento(0,0,0);
          List<Alimento>dieta=new ArrayList<>();
          for (int i =0;i<3;i++){
              p.nextDouble();
        q.nextDouble();
         r.nextDouble();
          dieta.add(i, new Alimento(p.nextDouble()+as/2,q.nextDouble()+as/2,r.nextDouble()+as/2));
          aux=mutar(dieta.get(i));
          aux1= mutar(dieta.get(i));
          aux2 = seleccion(aux,aux1);
          dieta.add(i,aux2);
              //poblacion[i]=new Alimento(p.nextDouble(),q.nextDouble(),r.nextDouble());
          }
          //pob.setDieta(dieta);
          return dieta;

    }
    public int fitness(Comida d, Alimento al)
    {
        for(int i =0;i<d.getDieta().size();i++){
            if(d.getDieta().get(i).getkcal()==al.getkcal()){
                d.getDieta().remove(i);
                d.getDieta().add(al);
                System.out.println("G:"+d.getDieta().get(i).getGrasas()+"C:"+d.getDieta().get(i).getCarbohidratos()+"P:"+d.getDieta().get(i).getProteinas());
                return 1;
            }
            
        }
        return 0;
    }
}
