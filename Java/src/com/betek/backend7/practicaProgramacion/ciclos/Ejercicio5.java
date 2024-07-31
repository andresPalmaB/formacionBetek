package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Promedio de numeros reales");
        System.out.print("Digite la cantidad de numeros a los que quiere sacar el promedio: ");
        int n = Integer.parseInt(scanner.nextLine());
        double contador = 0;
        double resultado;

        for (int i = 1; i <= n; i++){
            System.out.printf("Digite el numero %d: ", i);
            contador = contador + Double.parseDouble(scanner.nextLine());
        }

        resultado = contador / n;
        System.out.printf("El promedio entre los numeros digitados fue: %.2f", resultado);
    }
}
