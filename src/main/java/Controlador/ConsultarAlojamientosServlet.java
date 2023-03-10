/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author franc
 */
@WebServlet(name = "ConsultarAlojamientosServlet", urlPatterns = {"/ConsultarAlojamientosServlet"})
public class ConsultarAlojamientosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // variables que vamos a utilizar
        String provincia = "";
        String municipio= "";
        String date1 = "";
        String date2 = "";
        int numPersonas = 0;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        ArrayList Aloj= new  ArrayList<> ();
        ArrayList img = new  ArrayList<> ();
        ArrayList precios = new  ArrayList<> ();
        // recuperamos el email de la session
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("user");
        boolean banderaCliente = false;
        boolean banderaFecha = false;
        String nextStep ="/index.jsp";
        try{
            if(Datos.AnfitrionDB.emailExists(email)){
                banderaCliente = false;
                nextStep = "/vistaAnfitrion.jsp";
            } else if(Datos.ClienteDB.emailExists(email)){
                banderaCliente = true;
                nextStep = "/vistaCliente.jsp";
            }else{
                banderaCliente = true;
                nextStep = "/index.jsp";
            }
            
            /* TODO output your page here. You may use following sample code. */
            provincia=request.getParameter("inputAddress1");
            municipio=request.getParameter("inputAddress2");
            
            if(banderaCliente){
                date1 = request.getParameter("inputdateOne");
                Date d1 = dateFormat.parse(date1);
                date2 = request.getParameter("inputDateTwo");
                Date d2 = dateFormat.parse(date2);
                numPersonas=Integer.parseInt(request.getParameter("inputPersonOne"));
                if(d2.after(d1)){
                    Aloj=Datos.AlojamientoDB.consulta(provincia, municipio, d1, d2, numPersonas);
                }else{
                    banderaFecha=true;
                }
                
            } else{
                if(provincia!=null) Aloj=Datos.AlojamientoDB.consultaAnfitrion(email,provincia,municipio);
            }
            if(!banderaFecha){
                precios = Datos.PreciosDB.buscarPreciosAlojamientos(Aloj);
                img=Datos.ImagenDB.buscarImagenesAlojamientos(Aloj);
            }
        }catch(Exception e){
            System.out.println(e);
        }
        
        
        // una vez se pulse el boton, se captura su evento y se recraga la misma pagina
        try {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextStep);
            request.setAttribute("Aloj", Aloj);
            request.setAttribute("img", img);
            request.setAttribute("correcto", "nuevo");
            request.setAttribute("precios", precios);
            if(banderaCliente){
                request.setAttribute("fechaEntrada", date1);
                request.setAttribute("fechaSalida", date2);
                request.setAttribute("numpersonas", numPersonas);
            }
             
            if(banderaFecha) request.setAttribute("fechasMal", "Compuebe las fechas");
            // save in the session the email of the user and 
            // is save in the request object
            dispatcher.forward(request, response);
        } catch (IOException | ServletException e) {
            System.out.println(e);
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