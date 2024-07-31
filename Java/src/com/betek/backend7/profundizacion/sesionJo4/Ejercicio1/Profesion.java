package com.betek.backend7.profundizacion.sesionJo4.Ejercicio1;

public abstract class Profesion {
    //Atributos
    private final long sueldo;
    private long bono;

    //Constructor
    public Profesion(){
        this.sueldo = 2000000;
        this.bono = 0;
    }

    public Profesion(long sueldo, long bono){
        this.sueldo = sueldo;
        this.bono = bono;
    }

    //Getter and Setter
    public long getBono() {
        return bono;
    }

    public void setBono(long bono) {
        this.bono = bono;
    }

    //Metodos
    public long calcularSueldo(){
        return getBono() + this.sueldo;
    }

    public abstract void actualizarValorBono(long bono);
}
