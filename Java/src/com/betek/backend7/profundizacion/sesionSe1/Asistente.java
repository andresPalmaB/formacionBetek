package com.betek.backend7.profundizacion.sesionSe1;

public class Asistente extends Persona{
    //Atributos
    private String correo;

    //Constructores
    public Asistente(String nombre, String apellido, String correo) {
        super(nombre, apellido);
        this.correo = correo;
    }

    //GetterAndSetter
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
}
