<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Activo Sportwear</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
    <main>
        <header>
            <h1>Activo Sportwear</h1>
            <h2 class="destacado">Moda deportiva para tu mejor versión</h2>
            <h4 id="favorito">Rinde más, luce mejor</h4>
            <div id="image"><img src="../images/Logo.jpg" width="400" height="200" alt="Logo de Activo Sportwear"/></div>
        </header>
        
        <nav>
        	<a href="#" onclick="window.history.back(); return false;">Volver atrás</a>
            <a href="cambioClave.jsp">Menú</a>
            <a href="productos.jsp">Administrar productos</a>
            <a href="../cerrarSesion.jsp">Cerrar Sesion</a>
        </nav>
        
        <div class="agrupar">
                <h3>Cambio de clave</h3>
					<form action="respuestaClave.jsp" method="post">
					    <table border="1">
					    	<tr><td colspan="2">*campo obligatorio</td></tr>
					    	<tr><td>Clave Anterior:</td><td><input type="text" name="txtClaveA" required/>*campo obligatorio</td></tr>
					    	<tr><td>Clave Nueva:</td><td><input type="text" name="txtClaveN" maxlength="10" required/>*campo obligatorio</td></tr>
					    	<tr><td>Repetir Clave:</td><td><input type="text" name="txtClaveR" required/>*campo obligatorio</td></tr>
					    	
					    	<tr><td><input type="submit" name="btnEnviar" id="btnEnviar" value="Enviar Registro"/></td>
					    	<td><input type="reset" name="btnBorrar" id="btnBorrar" value="Borrar Registro"></td></tr>
					    </table>
					</form>

        </div>
        
        <footer>
            <ul>
                <li><a href="https://www.facebook.com/stevenalexis.bautistaleon/" target="_blank">
                	<img src="../icons/facebook.png" width="30" height="30" alt="icono de facebook"/></a></li>
                <li><a href="https://www.instagram.com/_stevxxn/" target="_blank">
                	<img src="../icons/instagram.png" width="30" height="30" alt="icono de instagram"/></a></li>
                <li><a href="https://www.tiktok.com/@_stevxxn" target="_blank">
                	<img src="../icons/tik-tok.png" width="30" height="30" alt="icono de tiktok"/></a></li>
            </ul>
            <p><a href="https://maps.app.goo.gl/N1hiiY9HRbSv2oEz7" target="_blank">Ver nuestra ubicación en el mapa</a></br></p>
        </footer>
    </main>
</body>
</html>
