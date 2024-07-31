package com.betek.backend7.profundizacion.sesionJo2;

public class Persona {
    //Atributos
    private String nombre;
    private int edad;
    private int id;

    //Constructores
    public Persona(){
        this.nombre = "";
        this.edad = 0;
        this.id = 0;
    }

    public Persona(String nombre, int edad, int id){
        this.nombre = nombre;
        this.edad = edad;
        this.id = id;
    }

    //Metodos
    public String getNombre() {
        return nombre;
    }
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }
    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    //Muestra los datos de la persona
    public void mostrar(){
        System.out.println("Datos persona:");
        System.out.printf("Nombre: %s, Edad: %d, Identificacion: %d%n", this.getNombre(), this.getEdad(), this.getId());
    }

    //Para saber si la persona es mayor de edad
    public boolean esMayorDeEdad(){
        if (this.getEdad() >= 18){
            return true;
        } else {
            return false;
        }
    }

    //Programa
    public static void main(String[] args) {
        Persona andres = new Persona("Andres Palma", 28, 123456789);

        andres.mostrar();
        if (andres.esMayorDeEdad()){
            System.out.printf("%s es mayor de edad, el tiene %d de edad.", andres.getNombre(), andres.getEdad());
        } else {
            System.out.printf("%s es menor de edad, el tiene %d de edad.", andres.getNombre(), andres.getEdad());
        }
    }
}
