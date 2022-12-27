/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author paula
 */
public class AnfitrionDB {
    // comprobamos si el email ha sido registrado anteriormente en la base de datos
    public static boolean emailExists(String emailAddress) {
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT EMAIL FROM ANFITRION "
        + "WHERE EMAIL = ?;";
        
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, emailAddress);
            rs = ps.executeQuery();
            boolean res = rs.next();
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            return res;
        } catch (Exception e) {
            return false;
        }
    }
    
    // Comprobamos si existe ese Cliente en la base de datos
    public static boolean userExists(String emailAddress, String password) {
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        boolean res=false;
        String query = "SELECT PASSWORD FROM ANFITRION "
                + "WHERE EMAIL LIKE ?;";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, emailAddress);
            rs = ps.executeQuery();
            rs.next();
            if(rs.getString("PASSWORD").equals(password))res=true;
            rs.close();
            ps.close();
            pool.freeConnection(connection);
            System.out.println("exist..............."+res);
            return res;
        } catch (Exception e) {
            return false;
        }
    }
}
