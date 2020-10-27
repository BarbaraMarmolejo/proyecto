<%-- 
    Document   : consultar
    Created on : 15-may-2020, 11:41:41
    Author     : barba
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>


          
    
<%Clases.conexion con = new Clases.conexion();
          Connection  cn = con.conexion();
            String sql1="select * from reserv";
            Statement st;
            
             
            try {
                   st = cn.createStatement();
                   ResultSet r=st.executeQuery(sql1); %>
                   <table id="content-table" border="1">
                      <tr>
				<td>
					<label>No. de Reservacion</label>
				</td>
				<td>
					<label>Nombre</label>
				</td>
				<td>
					<label>Apellido</label>
				</td>
				<td>
					<label>Personas</label>
				</td>
				<td>
					<label>Fecha</label>
				</td>
                                <td>
					<label>Hora</label>
				</td>
			</tr>
                    <%while(r.next()){%> 
                       <tr>
				<td>
                                    <label><%out.println(r.getString("id"));%></label>
				</td>
				<td>
					<label><%out.println(r.getString("nombre"));%></label>
				</td>
				<td>
					<label><%out.println(r.getString("apellido"));%></label>
				</td>
				<td>
					<label><%out.println(r.getString("personas"));%></label>
				</td>
				<td>
					<label><%out.println(r.getString("fecha"));%></label>
				</td>
                                <td>
					<label><%out.println(r.getString("hora"));%></label>
				</td>
			</tr> 
                   <%}%>
                </table>
              <% } catch (SQLException ex) {
                    System.out.println("error: "+ex );
                }%>            
                