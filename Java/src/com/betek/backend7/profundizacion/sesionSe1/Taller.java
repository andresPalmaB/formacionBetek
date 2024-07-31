package com.betek.backend7.profundizacion.sesionSe1;

import java.time.LocalDate;

public class Taller extends Evento{
    //Atributos
    private final String[] materialesNecesario = new String[5];
    private final int duracion;

    //Constructores
    public Taller(String nombre, LocalDate fechaInicio, LocalDate fechaFin, String lugar, int capacidadMaxima, int duracion) {
        super(nombre, fechaInicio, fechaFin, lugar, capacidadMaxima);
        this.duracion = duracion;
    }

    //Getter
    public String[] getMaterialesNecesario() {
        return materialesNecesario;
    }

    public int getDuracion() {
        return duracion;
    }

    //Metodos
    public void agregarMaterial(String material){
        for (String materiales : getMaterialesNecesario()){
            if (materiales == null){
                materiales = material;
                return;
            }
        }
        System.out.println("La lista esta llena");
    }
}
