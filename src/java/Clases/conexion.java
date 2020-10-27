/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Clases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.swing.JOptionPane;

/**
 *
 * @author dguerrero
 */
public class conexion {
    Connection con=null;
   
    public Connection conexion(){
       try {
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           con = DriverManager.getConnection("jdbc:odbc:dnscafe", "root", "312175Bastille.");
           System.out.println("conexion establecida");

       } catch (ClassNotFoundException | SQLException e) {
            System.out.println("conexion fallida");
           JOptionPane.showMessageDialog(null, "error de conexion "+e);
       }
       return con;
   }  
}