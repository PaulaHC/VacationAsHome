/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Datos;
import Modelo.Reserva;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author paula
 */
public class ReservaBD {
    public static void insertarReserva(Reserva res){
        Conexion pool = Conexion.getInstance();
        Connection connection = pool.getConnection();
        PreparedStatement ps = null;
        String query = "INSERT INTO zerberusbd.reserva (fechaEntrada, fechaSalida, numHuespedes, comentarios, estado, dividePago, Cliente_email, Alojamiento_ubicacionPrecisa, Alojamiento_Anfitrion_email) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        
        try {
            ps = connection.prepareStatement(query);
            java.sql.Date sqlDate1 = new java.sql.Date(res.getFechaEntrada().getTime());
            java.sql.Date sqlDate2 = new java.sql.Date(res.getFechaSalida().getTime());
            ps.setDate(1,sqlDate1 );
            ps.setDate(2, sqlDate2);
            ps.setInt(3, res.getNumHuespedes());
            ps.setString(4, res.getComentarios());
            ps.setString(5, res.getEstado());
            ps.setBoolean(6, res.isDividePago());
            ps.setString(7, res.getUsuarioRegistrado_email());
            ps.setString(8, res.getAlojamiento_ubicacion_precisa());
            ps.setString(9, res.getAlojamiento_anfitrion_email());
            
            ps.executeUpdate();
            ps.close();
            pool.freeConnection(connection);
        }catch (SQLException e) {
        }
    }
}
