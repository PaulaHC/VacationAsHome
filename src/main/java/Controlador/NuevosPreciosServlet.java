/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Datos.PreciosDB;
import Modelo.Precio;
import java.io.IOException;
import java.text.ParseException;
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
@WebServlet(name = "NuevosPreciosServlet", urlPatterns = {"/NuevosPreciosServlet"})
public class NuevosPreciosServlet extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("user");
        String coordenadas = "";
        
        // parametros a modificar
        float precioNoche=0;
        float precioFinSemana=0;
        float precioSemana=0;
        float precioMes=0;
        String fechaInicio = "";
        String fechaFin = "";
        Date date1 = new Date();
        Date date2 = new Date();
        
        ArrayList Aloj= new  ArrayList<> ();
        ArrayList img = new  ArrayList<> ();
        ArrayList precios = new  ArrayList<> ();
        
        // bandera en caso de meter mal los datos
        boolean flag = false;
        
        // formateamos la fecha
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
        
        try {
            precioNoche=Float.parseFloat(request.getParameter("precioNoche"));
            precioFinSemana=Float.parseFloat(request.getParameter("precioFinSemana"));
            precioSemana=Float.parseFloat(request.getParameter("precioSemana"));
            precioMes=Float.parseFloat(request.getParameter("precioMes"));
            
            // comprobamos los precios
            if(precioNoche < precioFinSemana && precioFinSemana < precioSemana && precioSemana < precioMes){
                fechaInicio = request.getParameter("fechaInicio");
                date1 = dateFormat.parse(fechaInicio);
                fechaFin = request.getParameter("fechaFin");
                date2 = dateFormat.parse(fechaFin);
                if(date2.after(date1) && date2!=null && date1!=null){
                    Precio p = new Precio();
                    p.setPrecioNoche(precioNoche);
                    p.setPrecioFinDeSemana(precioFinSemana);
                    p.setPrecioSemana(precioSemana);
                    p.setPrecioMes(precioMes);
                    p.setFechaIncio(date1);
                    p.setFechaFin(date2);
                    
                    coordenadas = request.getParameter("coordenadas");
                    coordenadas = coordenadas.substring(0, coordenadas.length() - 1);
                    // modificamos en la base de datos los parametros
                    PreciosDB.insertaPrecios(p, coordenadas);
                    
                    flag = false;
                }else{
                    flag=true;
                }
            }else{
                flag=true;
            }
            
            if(flag){
                Aloj=Datos.AlojamientoDB.consultaAnfitrion(email,request.getParameter("localidad"), "");
                precios = Datos.PreciosDB.buscarPreciosAlojamientos(Aloj);
                img=Datos.ImagenDB.buscarImagenesAlojamientos(Aloj);
            }
           
        }catch(NumberFormatException | ParseException e){
            flag=true;
            Aloj=Datos.AlojamientoDB.consultaAnfitrion(email,request.getParameter("localidad"), "");
                precios = Datos.PreciosDB.buscarPreciosAlojamientos(Aloj);
                img=Datos.ImagenDB.buscarImagenesAlojamientos(Aloj);
            System.out.println(e);
        }
        
        try {
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/vistaAnfitrion.jsp");
            if(flag){
                request.setAttribute("correcto", "mal");
                request.setAttribute("Aloj", Aloj);
                request.setAttribute("img", img);
                request.setAttribute("precios", precios);
            }else{
                request.setAttribute("correcto", "Nuevos Precios Registrados Correctamente");
            }
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
