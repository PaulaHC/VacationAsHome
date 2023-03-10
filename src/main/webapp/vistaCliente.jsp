<%-- 
    Document   : index
    Created on : 18 dic. 2022, 15:44:36
    Author     : franc,Paula
--%>

<%@page import="Modelo.Precio"%>
<%@page import="Modelo.Precio"%>
<%@page import="Modelo.Imagen"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Alojamiento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">

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
      <script>
          document.addEventListener("DOMContentLoaded", function() {
            if (localStorage.getItem("mostrarFormulario") === "false") {
                document.getElementById("testimonial").style.display = "block";
                document.getElementById("Informacion").style.display = "none";
                // Comprobar si el formulario se debe mostrar o ocultar
            }else{
              document.getElementById("testimonial").style.display = "block";;
              document.getElementById("Informacion").style.display = "none";
            }
            localStorage.setItem("mostrarFormulario", "false");
            // Mostrar formulario al hacer clic en el bot??n
            document.getElementById("consulta").addEventListener("click", function() {
              localStorage.setItem("mostrarFormulario", "true");
              document.getElementById("testimonial").style.display = "block";
              document.getElementById("Informacion").style.display = "none";
              // Guardar el estado del formulario en el almacenamiento local
            });
            
            document.getElementById("consultaInfo").addEventListener("click", function() {
              document.getElementById("testimonial").style.display = "block";
              document.getElementById("Informacion").style.display = "block";
            });
            document.getElementById("close").addEventListener("click", function() {
              document.getElementById("testimonial").style.display = "block";
              document.getElementById("Informacion").style.display = "none";
            });
          });
      </script>
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
        <div class="bg-holder w-50 bg-right d-none d-lg-block" style="background-image:url(assets/img/gallery/visya.jpg);">
        </div>
        <!--/.bg-holder-->

        <div class="container">
          <div class="row">
            <div class="col-lg-6 py-5 py-xl-5 py-xxl-7">
              <h1 class="display-3 text-1000 fw-normal">Start exploring</h1>
              <h1 class="display-3 text-primary fw-bold">Discover yourself</h1>
              <div class="pt-5">
                   <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                      <form class="row g-4 mt-5" action="ConsultarAlojamientosServlet" metod="post">
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <label class="form-label visually-hidden" for="inputAddress1">Provincia</label>
                            <input class="form-control input-box form-voyage-control" id="inputAddress1" name="inputAddress1" type="text" placeholder="Provincia" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt"></i></span>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <label class="form-label visually-hidden" for="inputAddress2">Municipio</label>
                            <input class="form-control input-box form-voyage-control" id="inputAddress2" name="inputAddress2" type="text" placeholder="Municipio" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-map-marker-alt"> </i></span>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                              <input class="form-control input-box form-voyage-control" id="inputdateOne" name="inputdateOne" type="date" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-calendar"></i></span>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <input class="form-control input-box form-voyage-control" id="inputDateTwo" name="inputDateTwo" type="date" /><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-calendar"></i></span>
                          </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-xl-5">
                          <div class="input-group-icon">
                            <label class="form-label visually-hidden" for="inputPersonOne">Person</label>
                            <select class="form-select form-voyage-select input-box" id="inputPersonOne" name="inputPersonOne">
                                <option selected="selected" value="2">2 Adults</option>
                              <option value="3">2 Adults 1 children</option>
                              <option value="4">2 Adults 2 children</option>
                              
                            </select><span class="nav-link-icon text-800 fs--1 input-box-icon"><i class="fas fa-user"> </i></span>
                          </div>
                        </div>
                        <div class="col-12 col-xl-10 col-lg-12 d-grid mt-6">
                            <button  id="consulta" class="btn btn-secondary"  type="submit" >Consultar Alojamientos</button>
                        </div>
                      </form>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      
      
        <section id="testimonial" >
            <div class="container">
              <div class="row h-100">
                    <div class="col-lg-7 mx-auto text-center mb-6">
                       <h6 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3">Outcome</h6>
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
                                        <% ArrayList<Alojamiento>  dataList= (ArrayList<Alojamiento>)request.getAttribute("Aloj");
                                           ArrayList<Imagen>   im= (ArrayList<Imagen> )request.getAttribute("img");
                                           ArrayList<Precio> prec = (ArrayList<Precio> )request.getAttribute("precios");
                                           String fechasMal = (String) request.getAttribute("fechasMal");
                                                if(fechasMal==null){
                                                    if(dataList!=null){
                                                        if(dataList.size()<=0){ %>
                                                       <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: red" >No results found </h5>
                                                    <% } 
                                                        for(int i=0; i<dataList.size(); i++){
                                                            Alojamiento r = dataList.get(i);
                                                            Imagen ig=im.get(i);
                                                            String nom=r.getNombre();
                                                            nom=nom.replaceAll(" ", "-"); %>
                                                             <div class="col-md-3 mb-3 mb-md-0 h-100" id="mostrarSiempre">
                                                                <div class="card card-span h-100 text-white"><img class="img-fluid h-100" src="<%= ig.getImagen()%>" alt=<%= ig.getEtiqueta()%> />
                                                                    <div id="mostrarSiempre" ><span class="badge bg-secondary col-12 p-2"><a id="consultaInfo" class="fas fa-clock me-1" href="#Informacion">infor</a></span></div>
                                                                    <div class="card-body ps-0">
                                                                        <h5 ><%= r.getNombre() %></h5>
                                                                        <span class="fw-bold text-1000 mb-4 text-truncate"><%=r.getLocalidad() %></span><br>
                                                                       <span class="fw-bold text-1000 mb-4 text-truncate">Valoracion:<%=r.getValoracionGlobal() %>*</span>
                                                                        <h6><%= r.getUbicacionDescrita() %></h6>
                                                                        <h1 class="mb-3 text-primary fw-bolder fs-4"><span><%=""+prec.get(i).getPrecioNoche() %>$</span><span class="text-900 fs--1 fw-normal">/Por Noche</span></h1>
                                                                        <form class="row g-2 mt-2" action="DetallesReservaServlet" metod="post">
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="nombre"  type="hidden"  value=<%=nom%> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="fechaEntrada"  type="hidden" value=<%=request.getAttribute("fechaEntrada") %> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="fechaSalida"  type="hidden" value=<%=request.getAttribute("fechaSalida") %> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="numHuespe"  type="hidden" value=<%=request.getAttribute("numpersonas")%> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="estado"  type="hidden" value="realizada" />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="Alojamiento_ubicacionPrecisa"  type="hidden" value=<%=r.getUbicacionPrecisaGPS()%> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="Alojamiento_Anfitrion_email"  type="hidden" value=<%=r.getAnfitrion_email()%> />
                                                                            <input class="form-control input-box form-voyage-control" id="ocultar" name="precio"  type="hidden" value=<%=""+prec.get(i).getPrecioNoche() %>/> 
                                                                            <button id="reserva" class="btn btn-primary" type="submit">Reservar</button>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                          <div id="Informacion" class="col-md-3 mb-3 mb-md-0 h-100">
                                                                <p><b>Destalles:</b></p>
                                                                <p><b><%= r.getNombre() %></b></p>
                                                                <p>Localidad: <%= r.getLocalidad() %></p>
                                                                <p>Valoracion global: <%= r.getValoracionGlobal() %></p>
                                                                <p>Maximo de huespedes: <%= r.getMaxHuespedes() %></p>
                                                                <p><b>Aseos:</b> <%= r.getNumBa??os() %>  <b>Camas:</b> <%= r.getNumCamas() %>  <b>Dormitorios:</b> <%= r.getNumDormitorios() %>  </p>
                                                                <p><%= r.getUbicacionDescrita() %></p>
                                                                <p><b>Caracter??sticas:</b></p>
                                                                <p><%= r.getCaracteristicas() %></p>
                                                                <p><b>Servicios:</b></p>
                                                                <p><%= r.getServicio() %></p>
                                                                <p>Contacto: <%= r.getAnfitrion_email() %></p>
                                                                <div class="col-md-3 mb-3 mb-md-0 h-100"><span class="badge bg-secondary ms-3 me-1 p-2"><a id="close" href="#testimonial">Close</a></span></div>
                                                            </div>

                                                       <%} // cierre del for
                                                    }else { %>
                                                       <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: red" >No results found</h5>
                                                   <% }  
                                                }else{ 
                                                   if(fechasMal.equals("Reserva Registrada Correctamente")){ %>
                                                       <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: green" ><%=fechasMal %></h5>
                                                    <% }else{ %>
                                                       <h5 class="fw-bold fs-3 fs-lg-5 lh-sm mb-3" style="color: red" ><%=fechasMal %></h5>
                                            <%     }
                                                } %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
      <!-- ============================================-->
      <img id="img" class="img-fluid me-3 me-md-2 me-lg-4" src="assets/img/icons/mujer.png" alt="..." />
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
    <script data-main="libs/main" src="libs/require.js"></script>

    <link href="https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600;700&amp;display=swap" rel="stylesheet">
  </body>

</html>
