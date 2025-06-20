<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Activo Sportwear</title>
    <link href="../css/estilos.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
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
            <a href="clave.jsp">Cambiar Clave</a>
            <a href="../cerrarSesion.jsp">Cerrar Sesion</a>
        </nav>
        
        <div class="agrupar">

                <h3>Registro de Productos</h3>
			    <form action="ingresarProducto.jsp" method="get">
				    <div class="form-floating mb-3">
					  <input type="text" class="form-control" id="floatingInput" name="txtNombre" />
					  <label for="floatingInput">Nombre </label>
					</div>
					<div class="mb-3">
						<label for="Categoria" class="form-label" >Categoria</label>
						<select class="form-select" name="cmbCategoria">
						  <option selected>Seleccione una opción</option>
						  <option value="1">Jovenes</option>
						  <option value="2">Adultos</option>
						  <option value="3">Niños</option>
						</select>
					</div>
					<div class="mb-3">
                      <label for="Cantidad" class="form-label">Cantidad</label>
                      <input type="number" class="form-control" id="Cantidad" name="txtCantidad"/>
					</div>
					<div class="mb-3">
                      <label for="Precio" class="form-label">Precio</label>
                      <input type="number" class="form-control" id="Precio" name="txtPrecio"/>
                    </div>
                    <div class="mb-3">
                      <label for="Foto" class="form-label">Foto</label>
                      <input type="file" class="form-control" id="Foto" name="imgFoto"/>
                    </div>
					<button type="SUBMIT" class="btn btn-primary">Ingresar Producto</button>
					<button type="RESET" class="btn btn-secondary">Limpiar</button>
				</form>
				
				<!-- Tabla -->
				<h3 class="mt-5 mb-3">Listado de Productos</h3>
				<%
				
					Product pr = new Product();
                    out.println(pr.reporteProducto());
				
				%>

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
