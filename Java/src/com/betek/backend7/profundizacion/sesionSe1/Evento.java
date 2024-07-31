package com.betek.backend7.profundizacion.sesionSe1;

import java.time.LocalDate;

public abstract class Evento {
    //Atributos
    private final String nombre;
    private final LocalDate fechaInicio;
    private final LocalDate fechaFin;
    private final String lugar;
    private final int capacidadMaxima;
    private final Asistente[] listaAsistentes;

    //Constructores
    public Evento(String nombre, LocalDate fechaInicio, LocalDate fechaFin, String lugar, int capacidadMaxima) {
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.lugar = lugar;
        this.capacidadMaxima = capacidadMaxima;
        this.listaAsistentes = new Asistente[capacidadMaxima];
    }

    //Getter
    public String getNombre() {
        return nombre;
    }

    public LocalDate getFechaInicio() {
        return fechaInicio;
    }

    public LocalDate getFechaFin() {
        return fechaFin;
    }

    public String getLugar() {
        return lugar;
    }

    public int getCapacidadMaxima() {
        return capacidadMaxima;
    }

    public Asistente[] getListaAsistentes() {
        return listaAsistentes;
    }

    //Metodos
    public void agregarAsistente(Asistente asistente){
        for (int i = 0; i < listaAsistentes.length; i++){
            if (listaAsistentes[i] == null){
                listaAsistentes[i] = asistente;
                System.out.println("El asistente fue agregado con exito.");
                return;
            }
        }
        System.out.println("La lista esta llena");
        System.out.println();
    }

    public void mostrarInfomacion(){
        System.out.printf("Informacion del Evento%n" +
                "Nombre del evento: %s%n" +
                "Fecha Inicializacion: %s%n" +
                "Fecha Finalizacion: %s%n" +
                "Lugar del Evento: %s%n" +
                "Capacidad Maxima: %d%n" +
                "Cupos disponibles: %d%n" +
                "Lista de Asistentes: %n"
                , getNombre(), getFechaInicio().toString(), getFechaFin().toString(), getLugar(), getCapacidadMaxima(), getCapacidadMaxima() - getListaAsistentes().length);
        int i = 0;
        for (Asistente asistente : getListaAsistentes()){
            if (asistente != null){
                i++;
                System.out.printf("%d. %s %s%n", i, asistente.getNombre(), asistente.getApellido());
            }
        }
        System.out.println();
    }
}
