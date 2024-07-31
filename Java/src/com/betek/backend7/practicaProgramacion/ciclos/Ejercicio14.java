package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio14 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Calcular el numero mayor, y validar que el limite sea un entero positivo mayor que 0.");
        int n;
        double numMayor = 0;

        do {
            System.out.print("Digite el limite de numeros a validar recuerde que el numero debe ser mayor que 0: ");
            n = Integer.parseInt(scanner.nextLine());

            if (n <= 0){
                System.out.println("Error, usted a ingresado un numero menor o igual que 0.");
            }
        } while (n <= 0);

        for (int i = 0; i < n; i++){
            System.out.printf("Digite el numero %d a analizar: ", i + 1);
            double num = Double.parseDouble(scanner.nextLine());

            if (i == 0){
                numMayor = num;
            } else {
                if (num > numMayor) {
                    numMayor = num;
                }
            }
        }
        System.out.printf("El numero mayor es: %.2f", numMayor);
    }
}
