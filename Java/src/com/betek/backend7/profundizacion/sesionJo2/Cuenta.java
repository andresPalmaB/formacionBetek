package com.betek.backend7.profundizacion.sesionJo2;

import java.util.Scanner;
import java.util.UUID;

public class Cuenta {
    //Atributos
    public String nombreDelTitular;
    public double saldoCuenta;
    public UUID numeroDeCuenta;

    //Constructor
    public Cuenta(){
        this.nombreDelTitular = "";
        this.saldoCuenta = 0;
        this.numeroDeCuenta = UUID.randomUUID();
    }

    public Cuenta(String nombreDelTitular, double saldoCuenta){
        this.nombreDelTitular = nombreDelTitular;
        this.saldoCuenta = saldoCuenta;
        this.numeroDeCuenta = UUID.randomUUID();
    }

    //Metodos
    public void setIngreso(double saldoAgregado){
        this.saldoCuenta += saldoAgregado;
    }

    public void setRetiro(double saldoRetirado){
        if (saldoRetirado <= this.saldoCuenta){
            this.saldoCuenta -= saldoRetirado;
        } else {
            System.out.println("Saldo insuficiente.");
        }

    }

    public double getSaldoCuenta(){
        return this.saldoCuenta;
    }

    public void getDatosCuenta(){
        System.out.println("Los Datos del titular de la cuenta son:");
        System.out.printf("Nombre del titular: %s%n", this.nombreDelTitular);
        System.out.printf("Numero de cuenta  : %s%n", this.numeroDeCuenta.toString());
        System.out.printf("saldo de la cuenta: %.2f%n", this.saldoCuenta);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Cuenta cuenta = new Cuenta("Andres Palma Bustos", 50000);


    }
}
