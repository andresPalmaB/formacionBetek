package com.betek.backend7.profundizacion.sesionJo4.Ejercicio1;

public class Ingeniero extends Profesion{
    //Contructor
    public Ingeniero() {
    }

    public Ingeniero(long sueldo, long bono) {
        super(sueldo, bono);
    }

    //Metodos
    @Override
    public void actualizarValorBono(long bono){
        setBono(bono);
    }
}
