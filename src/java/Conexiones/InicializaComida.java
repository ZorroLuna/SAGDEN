/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import primeralgoritmo.Alimento;

/**
 *
 * @author root
 */
public class InicializaComida {
        public List<Alimento> inicializaPersona(double com){
        
        List<Alimento> personas = new ArrayList<>();
        List<Alimento> personas1 = new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");
            Statement sa = conn.createStatement();
            double ran = Math.random()%20 + 1 ;
                ResultSet rs= sa.executeQuery("SELECT*from alimento where Grupo_idGrupo ="+ran);
               while(rs.next()){
                   Alimento p=new Alimento();
                   p.setNomAl(rs.getString("Alimento"));
                   p.setCarbos(Double.parseDouble(rs.getString("hidratoscarbono")));
                   p.setProteinas(Double.parseDouble(rs.getString("proteinas")));
                   p.setGrasas(Double.parseDouble(rs.getString("grasas")));
                   p.setKcal(Double.parseDouble(rs.getString("cal")));
                   p.setUom(rs.getString("uom"));
                   p.setPorcion(rs.getString("porcion"));
                   p.setGrupo(rs.getString("Grupo_idGrupo"));
                personas.add(p);
        }
               double aux=0;
               while(aux<=com){
                   int i=0;
                       aux+=personas.get(i).getkcal();
                       personas1.add(personas.get(i));
                       i++;
                   
               }
}catch (SQLException ex) {
            //Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
           out.println("Error De Conexion" + ex.getMessage());
        } catch (ClassNotFoundException ex) {
           // Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
            out.println("Error De Clase" + ex.getMessage());
        }
        return personas1;
    }
}
