package com.betek.backend7.profundizacion.sesionJo4.Ejercicio1;

public class Medico extends Profesion{
    //Constructor
    public Medico() {
    }

    public Medico(long sueldo, long bono) {
        super(sueldo, bono);
    }

    //Metodos
    @Override
    public void actualizarValorBono(long bono) {
        setBono(bono);
    }
}
