package com.betek.backend7.profundizacion.sesionSe1;

import java.time.LocalDate;

public class Conferencia extends Evento{
    //Atributos
    private String tema;
    private Persona ponente;

    //Constructor
    public Conferencia(String nombre, LocalDate fechaInicio, LocalDate fechaFin, String lugar, int capacidadMaxima, String tema, Persona ponente) {
        super(nombre, fechaInicio, fechaFin, lugar, capacidadMaxima);
        this.tema = tema;
        this.ponente = ponente;
    }

    //Getter
    public String getTema() {
        return tema;
    }

    public Persona getPonente() {
        return ponente;
    }

    //Metodos
    public void agregarTema(String tema){
        this.tema = tema;
    }

    public void agregarPonente(Persona persona){
        this.ponente = persona;
    }
}
