/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Servlets;

import Clases.conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dguerrero
 */
public class proceso extends HttpServlet {

    String nombre,apellido,telefono,email,fecha,hora;
    int personas;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                
            nombre = request.getParameter("nombre");
            apellido = request.getParameter("apellido");
            telefono = request.getParameter("telefono");
            email = request.getParameter("email");
            personas = Integer.parseInt(request.getParameter("personas"));
            fecha = request.getParameter("fecha");
            hora = request.getParameter("hora");
          
            conexion con = new conexion();
            Connection cn = con.conexion();
            String sql="insert into reserv(nombre,apellido,telefono,email,personas,fecha,hora)"
                + " values(?,?,?,?,?,?,?)";
            try {
                 PreparedStatement pst=cn.prepareStatement(sql);
                 pst.setString(1,nombre);
                 pst.setString(2,apellido);
                 pst.setString(3,telefono);
                 pst.setString(4,email);
                 pst.setInt(5,personas);
                 pst.setString(6,fecha);
                 pst.setString(7,hora);

                 int n=pst.executeUpdate();
                 if (n>0){
                  response.sendRedirect("reservar.jsp");        
                 }else{
                      out.println("Error a la hora de registrar el libro");
                 }
               } catch (SQLException ex) {
                  Logger.getLogger(proceso.class.getName()).log(Level.SEVERE, null, ex);
               }   
             
        }
    } 
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

