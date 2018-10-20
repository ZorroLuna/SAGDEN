/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class ConexionBD {
    public void conexionBDO(){
        try {
            DriverManager.registerDriver (new oracle.jdbc.driver.OracleDriver());
            
            Connection conn = null;
            try {
                conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "FREEDOM", "alter196");
                // driver@machineName:port:SID           ,  userid,  password
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            
            Statement stmt=null;
            try {
                stmt = conn.createStatement();
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            ResultSet rset= null;
            try {
                rset = stmt.executeQuery("select * from MENU_SMAE");
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            try {
                while (rset.next()){
                    int i = 1;
                   System.out.println ( rset.getString("NOM_ALIMENTO"));
                    System.out.println (rset.getString("PORCION")); 
                    System.out.println(rset.getString("UOM"));
                    System.out.println (rset.getString("HC"));
                i++;// Print col 1
                }
            } catch (SQLException ex) {
                System.out.println(ex.getMessage());
            }
            stmt.close();
        } catch (SQLException ex) {
           System.out.println(ex.getMessage());
        }
    }
}
