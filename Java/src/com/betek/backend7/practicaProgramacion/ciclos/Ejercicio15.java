package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio15 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Determinar promedio de edades, y decir la edad menor y la mayor.");
        System.out.print("Digite el numero de jugadores que se encuentran en el equipo: ");
        int n = scanner.nextInt();
        int edad;
        int edadMenor = 100;
        int edadMayor = 0;
        double promedioEdad = 0;

        for (int i = 0; i < n; i++){
            System.out.printf("Digite la edad del jugador #%d: ", i + 1);
            edad = scanner.nextInt();
            promedioEdad = promedioEdad + edad;

            if (edad < edadMenor){
                edadMenor = edad;
            }

            if (edad > edadMayor){
                edadMayor = edad;
            }
        }

        System.out.printf("La menor edad de los jugadores es: %d%n", edadMenor);
        System.out.printf("La mayor edad de los jugadores es: %d%n", edadMayor);
        System.out.printf("El promedio de edades en el equipo es: %.2f%n", promedioEdad / n);
    }
}
