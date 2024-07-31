package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio13 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Imprimir serie Fibonacci hasta limite dado");
        System.out.print("Digite el limite de la serie Fibonacci que quiere saber: ");
        int n = Integer.parseInt(scanner.nextLine());
        int num1 = 0;
        int num2 = 1;
        int salvarNum;

        for (int i = 1; i <= n; i++){
            switch (i) {
                case 1:
                    System.out.printf("%d ", num1);
                    break;
                case 2:
                    System.out.printf("%d ", num2);
                    break;
                default:
                    salvarNum = num1 + num2;
                    num1 = num2;
                    num2 = salvarNum;
                    System.out.printf("%d ", salvarNum);
                    break;
            }
        }
        System.out.println();
    }
}
