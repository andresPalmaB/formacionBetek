package com.betek.backend7.profundizacion.sesionJo1;

import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Comparar dos numeros y decir cual es menor");
        //suponemos que los numeros ingresados por el usuario son enteros
        int[] numeros = new int[2];

        for (int i = 0; i < numeros.length; i++){
            System.out.printf("Digite el numero %d: ", i + 1);
            numeros[i] = scanner.nextInt();
        }

        if (numeros[0] > numeros[1]){
            System.out.printf("El segundo numero ingresado, %d, es menor.", numeros[1]);
        } else if (numeros[0] < numeros[1]){
            System.out.printf("El primer numero ingresado, %d, es menor.", numeros[0]);
        } else {
            System.out.println("Los numero son iguales.");
        }
    }
}
