<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*" import="com.productos.seguridad.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Activo Sportwear</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<script> window.onUsersnapLoad = function(api) { api.init(); }; var script = document.createElement('script'); script.defer = 1; script.src = 'https://widget.usersnap.com/global/load/66480ce5-b480-4aa8-bb0d-06f5441226e9?onload=onUsersnapLoad'; document.getElementsByTagName('head')[0].appendChild(script); </script>
    <main>
        <header>
            <h1>Activo Sportwear</h1>
            <h2 class="destacado">Moda deportiva para tu mejor versión</h2>
            <h4 id="favorito">Rinde más, luce mejor</h4>
            <div id="image"><img src="../images/Logo.jpg" width="400" height="200" alt="Logo de Activo Sportwear"/></div>
        </header>
        
        <nav>
            <%
	        	String usuario;
				HttpSession sesion = request.getSession();
				if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
				{
					%>
					<jsp:forward page="login.jsp">
					<jsp:param name="error" value="Debe registrarse en el sistema."/>
					</jsp:forward>
					<%
				}
				else
				{
				    Usuario usuarioObj = (Usuario)sesion.getAttribute("usuario");
				    if(usuarioObj != null) {
				        String nombreUsuario = usuarioObj.getNombre();
				        int perfil = usuarioObj.getPerfil(); // Obtiene el perfil del objeto Usuario
				        Pagina pag = new Pagina();
				        String menu = pag.mostrarMenu(perfil);
				        out.print(menu);
				    } else {
				        response.sendRedirect("../login.jsp?error=sesion");
				        return;
				    }
				%>
        </nav>
        
		     <div class="agrupar">
		       <section>
					<h1>Sitio Privado</h1>
							<h4>Bienvenido Cliente: 
								<%
									out.println(usuarioObj.getNombre());
								%>
							</h4>
						<%}%>
		      </section>
            
            <aside>
                <a href="https://www.linkedin.com/in/steven-parra-02516b32b">Ver más información sobre los desarrolladores</a></br>
                <iframe src="https://www.google.com/maps/d/embed?mid=1EfbeRnJknOZ-F_WdFwZqUiwD3gqtczo&ehbc=2E312F" width="600" height="440"></iframe>
            </aside>
        </div>
        
        <footer>
            <ul>
                <li><a href="https://www.facebook.com/stevenalexis.bautistaleon/" target="_blank">
                	<img src="icons/facebook.png" width="30" height="30" alt="icono de facebook"/></a></li>
                <li><a href="https://www.instagram.com/_stevxxn/" target="_blank">
                	<img src="icons/instagram.png" width="30" height="30" alt="icono de instagram"/></a></li>
                <li><a href="https://www.tiktok.com/@_stevxxn" target="_blank">
                	<img src="icons/tik-tok.png" width="30" height="30" alt="icono de tiktok"/></a></li>
            </ul>
            <p><a href="https://maps.app.goo.gl/N1hiiY9HRbSv2oEz7" target="_blank">Ver nuestra ubicación en el mapa</a></br></p>
        </footer>
    </main>
</body>
</html>
