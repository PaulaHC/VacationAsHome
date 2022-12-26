/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Modelo.Alojamiento;
import Modelo.Imagen;
import Modelo.Precio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author franc
 */
public class PreciosDB {
    
    // actualizamos los precios en la base de datos
    public static void modificaPrecios(Precio p, String coordenadas) {
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //String query = "UPDATE PRECIO P SET PRECIONOCHE=?, PRECIOFINDESEMANA=?, PRECIOSEMANA=?, PRECIOMES=?, FECHAINICIO=?, FECHAFIN=? WHERE P.ALOJMAIENTO_UBICACIONPRECISA LIKE ?;";
        String query = "INSERT INTO PRECIO (PRECIONOCHE, PRECIOFINDESEMANA, PRECIOSEMANA, PRECIOMES, FECHAINICIO, FECHAFIN, ALOJAMIENTO_UBICACIONPRECISA) "
                + "VALUES(?, ?, ?, ?, ?, ?, ?);";

        try {
            ps = connection.prepareStatement(query);
            ps.setFloat(1, p.getPrecioNoche());
            ps.setFloat(2, p.getPrecioFinDeSemana());
            ps.setFloat(3, p.getPrecioSemana());
            ps.setFloat(4, p.getPrecioMes());
            
            java.sql.Date sqlDate1 = new java.sql.Date(p.getFechaIncio().getTime());
            java.sql.Date sqlDate2 = new java.sql.Date(p.getFechaFin().getTime());
            ps.setDate(5, sqlDate1);
            ps.setDate(6, sqlDate2);
            
            ps.setString(7, coordenadas);
            
            rs = ps.executeQuery();
            boolean res = rs.next();
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    // obtenemos una lista con los precios de los alojmaientos pasados como argumento
    public static ArrayList <Precio> buscarPreciosAlojamientos(ArrayList <Alojamiento> alojamientos) {
        
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        //buscar imagenes de los alojamientos de la lista
      
        String query = "SELECT precioNoche, precioFindeSemana, precioSemana, precioMes, MAX(fechaInicio) as fechaInicio, fechaFin "
                + "FROM PRECIO p JOIN ALOJAMIENTO a "
                + "WHERE p.`Alojamiento_ubicacionPrecisa` = a.`ubicacionPrecisa` AND p.`Alojamiento_ubicacionPrecisa` LIKE ?;";
        
        //Crear las variables
        ArrayList <Precio> precios = new ArrayList();
        Precio p = null;
      
        try {
            ps = connection.prepareStatement(query);
            for(int i=0;i<alojamientos.size();i++){
                ps.setString(1, alojamientos.get(i).getUbicacionPrecisaGPS());
                rs = ps.executeQuery();
                while (rs.next()) {
                p = new Precio();
                p.setPrecioNoche(rs.getFloat("precioNoche"));
                p.setPrecioFinDeSemana(rs.getFloat("precioFindeSemana"));
                p.setPrecioSemana(rs.getFloat("precioSemana"));
                p.setPrecioMes(rs.getFloat("precioMes"));
                p.setFechaIncio(rs.getDate("fechaInicio"));
                p.setFechaFin(rs.getDate("fechaFin"));
                precios.add(p);
                }
            }
            //cerramos
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return precios;
          
        } catch (Exception e) {
            return null;
        }
    }
   
}
