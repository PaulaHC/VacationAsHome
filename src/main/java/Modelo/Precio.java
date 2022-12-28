/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.Date;
/**
 *
 * @author marta
 */
public class Precio {
    private float precioNoche =0;
    private float precioFinDeSemana = 0;
    private float precioSemana = 0;
    private float precioMes = 0;
    private Date fechaIncio  = new Date();
    private Date fechaFin  = new Date();
    private String alojamiento_ubicacion_precisa = "";

    public void setPrecioNoche(float precioNoche) {
        this.precioNoche = precioNoche;
    }

    public void setPrecioSemana(float precioSemana) {
        this.precioSemana = precioSemana;
    }
    
    public void setPrecioFinDeSemana(float precioFinDeSemana) {
        this.precioFinDeSemana = precioFinDeSemana;
    }

    public void setPrecioMes(float precioMes) {
        this.precioMes = precioMes;
    }

    public void setFechaIncio(Date fechaIncio) {
        this.fechaIncio = fechaIncio;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public void setAlojamiento_ubicacion_precisa(String alojamiento_ubicacion_precisa) {
        this.alojamiento_ubicacion_precisa = alojamiento_ubicacion_precisa;
    }
    
    public float getPrecioNoche() {
        return this.precioNoche;
    }

    public float getPrecioFinDeSemana() {
        return this.precioFinDeSemana;
    }
    
    public float getPrecioSemana() {
        return this.precioSemana;
    }

    public float getPrecioMes() {
        return this.precioMes;
    }

    public Date getFechaIncio() {
        return this.fechaIncio;
    }

    public Date getFechaFin() {
        return this.fechaFin;
    }

    public String getAlojamiento_ubicacion_precisa() {
        return this.alojamiento_ubicacion_precisa;
    }
}


