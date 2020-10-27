<%-- 
    Document   : reservar
    Created on : 15-may-2020, 11:44:25
    Author     : barba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservaciones</title>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="reser"> 
        <div id="contenedor1">
        <h1>Insertar sus datos para Reservar</h1>
		<form id="form1" action="proceso" method="post">
		<table id="dat">
			<tr>
				<td>
					<label>Nombre</label>
				</td>
				<td>
					<input type="text" name="nombre" id="nombre">
				</td>
			</tr>
			<tr>
				<td>
					<label>Apellido</label>
				</td>
				<td>
					<input type="text" name="apellido" id="apellido">
				</td>
			</tr>
			<tr>
				<td>
					<label>Telefono</label>
				</td>
				<td>
					<input type="text" name="telefono" id="telefono">
				</td>
			</tr>
			<tr>
				<td>
					<label>Email</label>
				</td>
				<td>
					<input type="text" name="email" id="email">
				</td>
			</tr>
			<tr>
				<td>
					<label>Personas</label>
				</td>
				<td>
					<input type="number" name="personas" id="personas">
				</td>
			</tr>
                        <tr>
				<td>
					<label>Fecha</label>
				</td>
				<td>
					<input type="text" name="fecha" id="fecha">
				</td>
			</tr>
			<tr>
				<td>
					<label>Hora</label>
				</td>
				<td>
					<input type="text" name="hora" id="hora">
				</td>
			</tr>
		</table>
		<input type="submit" value="Guardar">	
	    </form>
        </div>
            <center>    
        <div id="referencias">
                <a href="">Term of Use </a>
                <a href="">Privacy Policy</a>
            </div>
	</center>
    </div>
    </body>
</html>


