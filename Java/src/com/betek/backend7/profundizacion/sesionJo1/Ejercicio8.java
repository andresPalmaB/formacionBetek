package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio8 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Asignar una descripcion a cada calificacion.");
        System.out.print("Digite la calificacion del estudiante de la A a la F: ");
        String calificacion = scanner.nextLine();

        switch (calificacion.toLowerCase()){
            case "a":
                System.out.println("Excelente :D");
                break;
            case "b":
                System.out.println("Bueno :)");
                break;
            case "c":
                System.out.println("Satisfactorio :|");
                break;
            case "d":
                System.out.println("Regular :(");
                break;
            case "f":
                System.out.println("Reprobador T-T");
                break;
            default:
                System.out.println("Error. Opcion no reconocida.");
        }
    }
}
