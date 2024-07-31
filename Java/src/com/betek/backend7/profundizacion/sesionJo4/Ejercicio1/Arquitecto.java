package com.betek.backend7.profundizacion.sesionJo4.Ejercicio1;

public class Arquitecto extends Profesion{
    //Contructor
    public Arquitecto() {
    }

    public Arquitecto(long sueldo, long bono) {
        super(sueldo, bono);
    }

    //Metodos
    @Override
    public void actualizarValorBono(long bono) {
        setBono(bono);
    }
}
