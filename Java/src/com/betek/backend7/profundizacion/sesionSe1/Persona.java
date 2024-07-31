package com.betek.backend7.profundizacion.sesionSe1;

public class Persona {
    //Atributos
    private String nombre;
    private String apellido;

    //Constructores
    public Persona(String nombre, String apellido){
        this.nombre = nombre;
        this.apellido = apellido;
    }

    //getterAndSetter
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
}
