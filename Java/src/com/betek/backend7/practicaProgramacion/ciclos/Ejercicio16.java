package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio16 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Determinar promedio de notas, decir la nota menor, la mayor y numero de estudiantes con nota maxima.");
        System.out.print("Digite el numero de Estudiantes que se encuentran en la clase: ");
        int n = scanner.nextInt();
        double nota;
        double notaMenor =  9999;
        double notaMayor = -9999;
        int numeroStuNotaMayor = 0;
        double promedioNota = 0;

        for (int i = 0; i < n; i++){
            System.out.printf("Digite la nota del estudiante #%d: ", i + 1);
            nota = scanner.nextInt();
            promedioNota = promedioNota + nota;

            if (nota < notaMenor){
                notaMenor = nota;
            }

            if (nota == notaMayor){
                numeroStuNotaMayor++;
            }

            if (nota > notaMayor){
                notaMayor = nota;
            }
        }

        System.out.printf("La menor edad de los jugadores es: %.2f%n", notaMenor);
        System.out.printf("La mayor edad de los jugadores es: %.2f%n", notaMayor);
        System.out.printf("El promedio de edades en el equipo es: %.2f%n", promedioNota / n);
        System.out.printf("El numero de estudiantes que obtuvieron la nota de %.2f fue de: %d%n", notaMayor, numeroStuNotaMayor);
    }
}
