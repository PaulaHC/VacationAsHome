/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.62
 * Generated at: 2022-12-27 10:53:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en-US\" dir=\"ltr\">\r\n");
      out.write("\r\n");
      out.write("  <head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    Document Title-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <title>VacationAsHome</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    Favicons-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <link rel=\"apple-touch-icon\" sizes=\"180x180\" href=\"assets/img/favicons/apple-touch-icon.png\">\r\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"assets/img/favicons/favicon-32x32.png\">\r\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"assets/img/favicons/favicon-16x16.png\">\r\n");
      out.write("    <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"assets/img/favicons/favicon.ico\">\r\n");
      out.write("    <link rel=\"manifest\" href=\"assets/img/favicons/manifest.json\">\r\n");
      out.write("    <meta name=\"msapplication-TileImage\" content=\"assets/img/favicons/mstile-150x150.png\">\r\n");
      out.write("    <meta name=\"theme-color\" content=\"#ffffff\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    Stylesheets-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <link href=\"assets/css/theme.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("   \r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    Main Content-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <main class=\"main\" id=\"top\">\r\n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light py-3 d-block\" data-navbar-on-scroll=\"data-navbar-on-scroll\">\r\n");
      out.write("        <div class=\"container\"><a class=\"navbar-brand\" href=\"index.jsp\"><img class=\"d-inline-block\" src=\"assets/img/gallery/logo.png\" width=\"50\" alt=\"logo\" /><span class=\"fw-bold text-primary ms-2\">VacationAsHome</span></a>\r\n");
      out.write("          <button class=\"navbar-toggler collapsed\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\r\n");
      out.write("          <div class=\"collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav mx-auto pt-2 pt-lg-0 font-base\">\r\n");
      out.write("              <li class=\"nav-item px-2\"><a class=\"nav-link fw-medium active\" aria-current=\"page\"><span class=\"nav-link-icon text-800 me-1 fas fa-map-marker-alt\"></span><span class=\"nav-link-text\"></span></a></li>\r\n");
      out.write("              <li class=\"nav-item px-2\"><a class=\"nav-link\"> <span class=\"nav-link-icon text-800 me-1 fas fa-plane\"></span><span class=\"nav-link-text\"></span></a></li>\r\n");
      out.write("              <li class=\"nav-item px-2\"><a class=\"nav-link\"> <span class=\"nav-link-icon text-800 me-1 fas fa-hotel\"></span><span class=\"nav-link-text\"></span></a></li>\r\n");
      out.write("              <li class=\"nav-item px-2\"><a class=\"nav-link\"><span class=\"nav-link-icon text-800 me-1 fas fa-bolt\"></span><span class=\"nav-link-text\"></span></a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("      <section class=\"mt-7 py-0\">\r\n");
      out.write("        <div class=\"bg-holder w-50 bg-right d-none d-lg-block\" style=\"background-image:url(assets/img/gallery/dhigu.png);\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <!--/.bg-holder-->\r\n");
      out.write("        \r\n");
      out.write("        ");
  String email = (String) session.getAttribute("user");
    if(email!=null) session.removeAttribute("user");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-6 py-5 py-xl-5 py-xxl-7\">\r\n");
      out.write("              <h1 class=\"display-3 text-1000 fw-normal\">Enter and continue exploring</h1>\r\n");
      out.write("              <h1 class=\"display-3 text-primary fw-bold\">Discover the beauty</h1>\r\n");
      out.write("              <div class=\"pt-5\">\r\n");
      out.write("                <nav>\r\n");
      out.write("                  <div class=\"tab-content\" id=\"nav-tabContent\">\r\n");
      out.write("                    <div class=\"tab-pane fade show active\" id=\"nav-home\" role=\"tabpanel\" aria-labelledby=\"nav-home-tab\">\r\n");
      out.write("                      <form class=\"row g-4 mt-5\" method=\"post\" action=\"LoginServlet\">\r\n");
      out.write("                        <div class=\"col-sm-6 col-md-6 col-xl-5\">\r\n");
      out.write("                          <div class=\"input-group-icon\">\r\n");
      out.write("                            <label class=\"form-label visually-hidden\" for=\"inputEmail\">Email</label>\r\n");
      out.write("                            <input class=\"form-control input-box form-voyage-control\" id=\"inputAddress1\" type=\"text\" placeholder=\"Email\" name=\"email\" /><span class=\"nav-link-icon text-800 fs--1 input-box-icon\"><i class=\"fas fa-map-marker-alt\"></i></span>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"col-sm-6 col-md-6 col-xl-5\">\r\n");
      out.write("                          <div class=\"input-group-icon\">\r\n");
      out.write("                            <label class=\"form-label visually-hidden\" for=\"inputAddress2\">Password</label>\r\n");
      out.write("                            <input class=\"form-control input-box form-voyage-control\" id=\"inputAddress2\" type=\"password\" placeholder=\"Password\" name=\"password\"/><span class=\"nav-link-icon text-800 fs--1 input-box-icon\"><i class=\"fas fa-map-marker-alt\"> </i></span>\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        \r\n");
      out.write("                        ");
 String texto = (String)request.getAttribute("showText"); 
                        System.out.print("texto: " + texto);
                            if(texto!=null){
      out.write("\r\n");
      out.write("                                  <br><h2 class=\"display-3 fw-normal\">");
      out.print( texto);
      out.write("</h2>\r\n");
      out.write("                            ");
}else{
      out.write("\r\n");
      out.write("                                  <p></p>\r\n");
      out.write("                            ");
}
      out.write("\r\n");
      out.write("                          \r\n");
      out.write("                        <div class=\"col-12 col-xl-10 col-lg-12 d-grid mt-6\">\r\n");
      out.write("                          <button class=\"btn btn-secondary\" type=\"submit\">Login </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                      </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </nav>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </section>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("      <!-- ============================================-->\r\n");
      out.write("      <!-- <section> begin ============================-->\r\n");
      out.write("      <section class=\"py-0 overflow-hidden\">\r\n");
      out.write("        <div class=\"container-fluid\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-6 px-0\"><img class=\"img-fluid order-md-0 mb-4 h-100 fit-cover\" src=\"assets/img/gallery/12.jpg\" alt=\"...\" /></div>\r\n");
      out.write("            <div class=\"col-lg-6 px-0 bg-primary-gradient bg-offcanvas-right\">\r\n");
      out.write("              <div class=\"mx-6 mx-xl-8 my-8\">\r\n");
      out.write("                <div class=\"align-items-center d-block d-flex mb-5\"><img class=\"img-fluid me-3 me-md-2 me-lg-4\" src=\"assets/img/icons/locations.png\" alt=\"...\" />\r\n");
      out.write("                  <div class=\"flex-1 align-items-center pt-2\">\r\n");
      out.write("                    <h5 class=\"fw-bold text-light\">Visit the greatest places</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"align-items-center d-block d-flex mb-5\"><img class=\"img-fluid me-3 me-md-2 me-lg-4\" src=\"assets/img/icons/schedule.png\" alt=\"...\" />\r\n");
      out.write("                  <div class=\"flex-1 align-items-center pt-2\">\r\n");
      out.write("                    <h5 class=\"fw-bold text-light\">Give yourself some time to explore new places</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"align-items-center d-block d-flex mb-5\"><img class=\"img-fluid me-3 me-md-2 me-lg-4\" src=\"assets/img/icons/save.png\" alt=\"...\" />\r\n");
      out.write("                  <div class=\"flex-1 align-items-center pt-2\">\r\n");
      out.write("                    <h5 class=\"fw-bold text-light\">Book spectacular accommodations</h5>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- end of .container-->\r\n");
      out.write("      </section>\r\n");
      out.write("      <!-- <section> close ============================-->\r\n");
      out.write("      <!-- ============================================-->\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-12 col-xl-10 col-lg-12 d-grid mt-3\"></div>\r\n");
      out.write("      \r\n");
      out.write("      <!-- <section> begin ============================-->\r\n");
      out.write("      <section class=\"py-0 overflow-hidden\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("          <div class=\"row\">\r\n");
      out.write("            <div class=\"col-6 col-sm-4 col-lg-6\">\r\n");
      out.write("              <div class=\"py-7\"><img class=\"d-inline-block\" src=\"assets/img/gallery/logo.png\" width=\"50\" alt=\"logo\" /><span class=\"fw-bold fs-4 text-primary ms-2\">VacationAsHome</span>\r\n");
      out.write("                <ul class=\"list-unstyled mt-4\">\r\n");
      out.write("                  <li class=\"mb-2\"><a class=\"text-800 fw-bold text-decoration-none\" href=\"#!\">News</a></li>\r\n");
      out.write("                  <li class=\"mb-2\"><a class=\"text-800 fw-bold text-decoration-none\" href=\"#!\">Terms &amp; Conditions</a></li>\r\n");
      out.write("                  <li class=\"mb-2\"><a class=\"text-800 fw-bold text-decoration-none\" href=\"#!\">Privacy</a></li>\r\n");
      out.write("                  <li class=\"mb-2\"><a class=\"text-800 fw-bold text-decoration-none\" href=\"#!\">About Us</a></li>\r\n");
      out.write("                  <li class=\"mb-2\"><a class=\"text-800 fw-bold text-decoration-none\" href=\"#!\">FAQs</a></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-6 col-8 col-lg-6 bg-primary-gradient bg-offcanvas-right\">\r\n");
      out.write("              <div class=\"p-3 py-7 p-md-7\">\r\n");
      out.write("                <p class=\"text-light\"><i class=\"fas fa-phone-alt me-3\"></i><span class=\"text-light\">+34 1234567890</span></p>\r\n");
      out.write("                <p class=\"text-light\"><i class=\"fas fa-envelope me-3\"></i><span class=\"text-light\">pdsc2223@gmail.com</span></p>\r\n");
      out.write("                <p class=\"text-light\"><i class=\"fas fa-map-marker-alt me-3\"></i><span class=\"text-light lh-lg\">333, UVA, Valladolid, Spain<br/>Europe</span></p>\r\n");
      out.write("                <div class=\"mt-6\"><a href=\"#!\"> <img class=\"me-3\" src=\"assets/img/icons/facebook.svg\" alt=\"...\" /></a><a href=\"#!\"> <img class=\"me-3\" src=\"assets/img/icons/twitter.svg\" alt=\"...\" /></a><a href=\"#!\"> <img class=\"me-3\" src=\"assets/img/icons/instagram.svg\" alt=\"...\" /></a></div>\r\n");
      out.write("                <p class=\"mt-3 text-light text-center text-md-start\"> Made with&nbsp;\r\n");
      out.write("                  <svg class=\"bi bi-suit-heart-fill\" xmlns=\"http://www.w3.org/2000/svg\" width=\"15\" height=\"15\" fill=\"#EB6453\" viewBox=\"0 0 16 16\">\r\n");
      out.write("                    <path d=\"M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z\"></path>\r\n");
      out.write("                  </svg>&nbsp;by&nbsp;<a class=\"text-light\" href=\"https://themewagon.com/\" target=\"_blank\">ThemeWagon </a>\r\n");
      out.write("                </p>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- end of .container-->\r\n");
      out.write("      </section>\r\n");
      out.write("      <!-- <section> close ============================-->\r\n");
      out.write("      <!-- ============================================-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </main>\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    End of Main Content-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <!--    JavaScripts-->\r\n");
      out.write("    <!-- ===============================================-->\r\n");
      out.write("    <script src=\"vendors/@popperjs/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"vendors/bootstrap/bootstrap.min.js\"></script>\r\n");
      out.write("    <script src=\"vendors/is/is.min.js\"></script>\r\n");
      out.write("    <script src=\"https://polyfill.io/v3/polyfill.min.js?features=window.scroll\"></script>\r\n");
      out.write("    <script src=\"vendors/fontawesome/all.min.js\"></script>\r\n");
      out.write("    <script src=\"assets/js/theme.js\"></script>\r\n");
      out.write("    <script src=\"http://code.jquery.com/jquery-1.11.0.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Titillium+Web:wght@300;400;600;700&amp;display=swap\" rel=\"stylesheet\">\r\n");
      out.write("  </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
