<%-- 
    Document   : vistaCliente
    Created on : 18 dic. 2022, 18:21:47
    Author     : franc
--%>

<%@page import="Modelo.Precio"%>
<%@page import="Modelo.Imagen"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Alojamiento"%>
<%@page language="java" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>VacationAsHome</title>

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">

    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link href="assets/css/theme.css" rel="stylesheet" />
    <link href="assets/css/main.css" rel="stylesheet" />
  </head>


  <body>
    <!-- ===============================================-->
    <!--    Main Content-->
    <!-- ===============================================-->
    <main class="main" id="top">
      <nav class="navbar navbar-expand-lg navbar-light py-3 d-block" data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand" href="index.jsp"><img class="d-inline-block" src="assets/img/gallery/logo.png" width="50" alt="logo" /><span class="fw-bold text-primary ms-2">VacationAsHome</span></a>
          <button class="navbar-toggler cobuttollapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto pt-2 pt-lg-0 font-base">
              <li class="nav-item px-2"><a class="nav-link fw-medium active" aria-current="page"><span class="nav-link-icon text-800 me-1 fas fa-map-marker-alt"></span><span class="nav-link-text"></span></a></li>
              <li class="nav-item px-2"><a class="nav-link"> <span class="nav-link-icon text-800 me-1 fas fa-plane"></span><span class="nav-link-text"></span></a></li>
              <li class="nav-item px-2"><a class="nav-link"> <span class="nav-link-icon text-800 me-1 fas fa-hotel"></span><span class="nav-link-text"></span></a></li>
              <li class="nav-item px-2"><a class="nav-link"><span class="nav-link-icon text-800 me-1 fas fa-bolt"></span><span class="nav-link-text"></span></a></li>
            </ul>
            <form>
              <a class="nav-item px-2"></a>
              <a href="register.jsp" class="btn btn-voyage-outline order-0" type="submit"><img id="iconoRegister" src="./assets/img/icons/register.png" /><span class="text-primary"></span></a>
            </form>
          </div>
        </div>
      </nav>
      <section class="mt-7 py-0">
        <div class="bg-holder w-50 bg-right d-none d-lg-block" style="background-image:url(assets/img/gallery/hero-section-1.png);">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row">
            <div class="col-lg-6 py-5 py-xl-5 py-xxl-7">
              <h1 class="display-3 text-1000 fw-normal">Let???s make a tour</h1>
              <h1 class="display-3 text-primary fw-bold">Discover the beauty</h1>
              <div class="pt-5">
                  <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                      <form class="row g-4 mt-5" method="post" action="ConsultarAlojamientosServlet">
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <label class="form-label visually-hidden" for="inputAddress1" name="provincia">Provincia</label>
                            <input class="form-control input-box form-voyage-control" name="inputAddress1" id="inputAddress1" type="text" placeholder="Provincia" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt"></i></span>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <label class="form-label visually-hidden" for="inputAddress2" name="municipio">Municipio</label>
                            <input class="form-control input-box form-voyage-control" name="inputAddress2" id="inputAddress2" type="text" placeholder="Municipio" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt"> </i></span>
                          </div>
                        </div>
                        <div class="col-12 col-xl-10 col-lg-12 d-grid mt-6">
                            <button class="btn btn-secondary" type="submit" name="botonReserva" id="botonReserva" name="botonEmpezarConsulta">Consultar Alojamientos</button>
                        </div>
                      </form>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="testimonial" name="reservas">
        <div class="container">
          <div class="row h-100">
            <div class="col-lg-10 mx-auto text-center mb-6">
                <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" id="tituloAlojamiento" name="tituloAlojamiento">Tus Alojamientos</h5>
                <form>
                    <button class="btn btn-primary" type="button" name="bottonOrdenar" value="precio">Ordenar Por Precio</button>
                     <button class="btn btn-primary" type="button" name="bottonOrdenar" vale="valoracion">Ordenar Por Valoracion</button>
              </form>
            </div>
            <div class="col-12">
              <div class="carousel slide" id="carouselTestimonials" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active" data-bs-interval="10000">
                    <div class="row h-100 align-items-center g-2">
                        <%    
                            ArrayList<Alojamiento> dataList= (ArrayList<Alojamiento>)request.getAttribute("Aloj");
                            ArrayList<Imagen> im = (ArrayList<Imagen> )request.getAttribute("img");
                            ArrayList<Precio> prec = (ArrayList<Precio> )request.getAttribute("precios");
                            String correcto = (String)request.getAttribute("correcto");
                            if(correcto!=null && correcto.equals("Nuevos Precios Registrados Correctamente")){ %>
                                <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: green" ><%= correcto%></h5>
                            <% } 
                            if(dataList!=null){
                                if(dataList.size()==0){ %>
                                    <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: red" >No results found</h5>
                            <%    }else{ 
                                    for(int i=0; i<dataList.size(); i++){
                                        Alojamiento r = dataList.get(i);
                                        Imagen ig=im.get(i);
                                    
                        %>
                      <!-- Duplicar este div para cada uno de los alojaminetos dipsonibles -->
                      <div class="row col-md-12 mb-3 mb-md-0 h-100 mt-5">
                        <div class="col-md-6 card card-span h-100 text-white "><img class="img-fluid h-100" src="<%= ig.getImagen()%>" alt=<%= ig.getEtiqueta()%> />
                        </div>
                        <div class="col-md-6 text-white">
                            <div class="card-body ps-2">
                              <form action="NuevosPreciosServlet" method="post">
                                <input type="hidden" name="coordenadas" value= <%=r.getUbicacionPrecisaGPS()%>/>
                                <h5 class="fw-bold text-1000 mb-4 text-truncate" ><%= r.getNombre() %></h5>
                                <div class="mt-2">
                                    <label class="form-label visually-hidden" for="precioNoche" name="precioNoche" type="number">precioNoche</label> <span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">precioNoche</i></span>
                                    <input class="form-control input-box form-voyage-control" id="precioNoche" name="precioNoche" type="text" placeholder="Precio Actual: <%=prec.get(i).getPrecioNoche() %>"/>
                                </div> <div class="mt-2">
                                    <label class="form-label visually-hidden" for="precioFinSemana" name="precioFinSemana" type="number">precioFinSemana</label><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">precioFinSemana</i></span>
                                    <input class="form-control input-box form-voyage-control" id="precioFinSemana" name="precioFinSemana" type="text" placeholder="Precio Actual: <%=prec.get(i).getPrecioFinDeSemana() %>"/>
                                </div> <div class="mt-2">
                                    <label class="form-label visually-hidden" for="precioSemana" name="precioSemana" type="number">precioSemana</label><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">precioSemana</i></span>
                                    <input class="form-control input-box form-voyage-control" id="precioSemana" name="precioSemana" type="text" placeholder="Precio Actual: <%=+prec.get(i).getPrecioSemana() %>"/>
                                </div> <div class="mt-2">
                                    <label class="form-label visually-hidden" for="precioMes" name="precioMes" type="number">precioMes</label><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">precioMes</i></span>
                                    <input class="form-control input-box form-voyage-control" id="precioMes" name="precioMes" type="text" placeholder="Precio Actual: <%=+prec.get(i).getPrecioMes() %>"/><span class="nav-link-icon text-800 fs--1 input-box-icon">
                                </div><div class="mt-2">
                                    <label class="form-label visually-hidden" for="fechaInicio" name="fechaInicio" type="date">fechaInicio</label><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">fechaInicioPrecios</i></span>
                                    <input class="form-control input-box form-voyage-control" id="fechaInicio" name="fechaInicio" type="date" placeholder=<%=prec.get(i).getFechaIncio() %>/>
                                </div><div class="mt-2">
                                    <span class="form-label visually-hidden" for="fechaFin" name="fechaFin" type="date">fechaFin</span><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt">fechaFinPrecios</i></span>
                                    <input class="form-control input-box form-voyage-control" id="fechaFin" name="fechaFin" type="date" placeholder=<%=prec.get(i).getFechaFin() %>/>
                                </div>
                                <% correcto = (String)request.getAttribute("correcto");
                                    if(correcto!=null && correcto.equals("mal")){  %>
                                        <div class="mt-2">
                                            <p class="fw-bold fs-1 fs-lg-3 lh-sm mb-3 " style="color:blue" >Datos Mal Introducidos.</p>
                                        </div>
                                <%  }else{} %>
                                <div class="mt-3 col-12 col-xl-12 col-lg-12 d-grid">
                                    <button class="btn btn-secondary" type="submit">Guardar</button>
                                </div>
                                    <input class="form-control input-box form-voyage-control" id="ocultar" name="localidad"  type="hidden" value=<%=r.getLocalidad() %> /> 
                              </form>
                            </div>
                        </div>
                                    
                      </div>
                                    
                        <%  }  
                                } //cierre del primer for
                        }%>
                        
                    </div>
                  </div>
                </div> 
              </div>
            </div>
          </div>
        </div>
      </section>
      
      <!-- ============================================-->
      
      <!-- <section> begin ============================-->
      <section class="py-0 overflow-hidden">
        <div class="container">
          <div class="row">
            <div class="col-6 col-sm-4 col-lg-6">
              <div class="py-7"><img class="d-inline-block" src="assets/img/gallery/logo.png" width="50" alt="logo" /><span class="fw-bold fs-4 text-primary ms-2">VacationAsHome</span>
                <ul class="list-unstyled mt-4">
                  <li class="mb-2"><a class="text-800 fw-bold text-decoration-none" href="#!">News</a></li>
                  <li class="mb-2"><a class="text-800 fw-bold text-decoration-none" href="#!">Terms &amp; Conditions</a></li>
                  <li class="mb-2"><a class="text-800 fw-bold text-decoration-none" href="#!">Privacy</a></li>
                  <li class="mb-2"><a class="text-800 fw-bold text-decoration-none" href="#!">About Us</a></li>
                  <li class="mb-2"><a class="text-800 fw-bold text-decoration-none" href="#!">FAQs</a></li>
                </ul>
              </div>
            </div>
            <div class="col-6 col-8 col-lg-6 bg-primary-gradient bg-offcanvas-right">
              <div class="p-3 py-7 p-md-7">
                <p class="text-light"><i class="fas fa-phone-alt me-3"></i><span class="text-light">+34 1234567890</span></p>
                <p class="text-light"><i class="fas fa-envelope me-3"></i><span class="text-light">pdsc2223@gmail.com</span></p>
                <p class="text-light"><i class="fas fa-map-marker-alt me-3"></i><span class="text-light lh-lg">333, UVA, Valladolid, Spain<br/>Europe</span></p>
                <div class="mt-6"><a href="#!"> <img class="me-3" src="assets/img/icons/facebook.svg" alt="..." /></a><a href="#!"> <img class="me-3" src="assets/img/icons/twitter.svg" alt="..." /></a><a href="#!"> <img class="me-3" src="assets/img/icons/instagram.svg" alt="..." /></a></div>
                <p class="mt-3 text-light text-center text-md-start"> Made with&nbsp;
                  <svg class="bi bi-suit-heart-fill" xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="#EB6453" viewBox="0 0 16 16">
                    <path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"></path>
                  </svg>&nbsp;by&nbsp;<a class="text-light" href="https://themewagon.com/" target="_blank">ThemeWagon </a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <!-- end of .container-->
      </section>
      <!-- <section> close ============================-->
      <!-- ============================================-->

    </main>
    <!-- ===============================================-->
    <!--    End of Main Content-->
    <!-- ===============================================-->

    <!-- ===============================================-->
    <!--    JavaScripts-->
    <!-- ===============================================-->
    <script src="vendors/@popperjs/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="assets/js/theme.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600;700&amp;display=swap" rel="stylesheet">
  </body>

</html>

