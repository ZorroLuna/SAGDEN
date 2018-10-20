/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package primeralgoritmo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author dell
 */
public class PrimerAlgoritmo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Comida c = new Comida();
        Alimento a = new Alimento(0,0,0);
        List<Alimento> dieta = new ArrayList<>();
        Funciones d =new Funciones();
        int unf=0,i=0;
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb", "root", "");
            //String url = "jdbc:sqlserver://SERVIDOR1\\COMPAC:49767;databaseName=adNEISA";
           // Connection conn = DriverManager.getConnection(url,"sa","Solo1$$");
           double as=0;
            Statement sa = conn.createStatement();
            ResultSet rs = sa.executeQuery("select idAlimento, Alimento, cal,hidratoscarbono,grasas,proteinas from alimento");
            //ResultSet rs1 = sa.executeQuery("select ConsumoKcal from dieta");
            while(rs.next()){
                /*rs1.next();
                as = rs1.getDouble("ConsumoKcal");*/
            rs.getString("Alimento");
            a.setKcal((long)rs.getDouble("cal"));
            a.setCarbohidratos((long)rs.getDouble("hidratoscarbono"));
            a.setGrasas((long)rs.getDouble("grasas"));
            a.setProteinas((long)rs.getDouble("proteinas"));
            dieta.add(a);
            i++;
            if(i<3){
                break;
            }
           }
            c.setDieta(d.poblacion(as));
            unf = d.fitness(c, a);
            if(unf==0){
                System.out.println("G:"+a.getGrasas()+"C:"+a.getCarbohidratos()+"P:"+a.getProteinas());
            }
            //response.sendRedirect("index.jsp");
        } catch (SQLException ex) {
          //  Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
           System.out.println("Error De Conexion" + ex.getMessage());
           //response.sendRedirect("login.jsp");
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(Connection1.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error De Clase" + ex.getMessage());
           // response.sendRedirect("login.jsp");
        }
    }
    
    
}
