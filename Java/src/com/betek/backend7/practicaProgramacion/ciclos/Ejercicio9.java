package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio9 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Cuadro con estrellas");
        System.out.print("Digite el tamaño del cuadro a realizar: ");
        int n = Integer.parseInt(scanner.nextLine());
        int k = n;

        for (int i = 0; i<n; i++){
            for (int j = 0; j < k; j++){
                System.out.print("* ");
            }
            k--;
            System.out.println();
        }
    }
}
