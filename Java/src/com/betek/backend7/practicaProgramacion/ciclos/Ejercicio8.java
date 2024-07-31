package com.betek.backend7.practicaProgramacion.ciclos;

import java.util.Scanner;

public class Ejercicio8 {
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.println("Cuadro con estrellas");
        System.out.print("Digite el tamaño del cuadro a realizar: ");
        int n = Integer.parseInt(scanner.nextLine());

        for (int i = 0; i<n; i++){
            for (int j = 0; j < n; j++){
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}
