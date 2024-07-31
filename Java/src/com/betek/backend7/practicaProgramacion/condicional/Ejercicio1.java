package com.betek.backend7.practicaProgramacion.condicional;

import java.util.Scanner;

public class Ejercicio1 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Calculadora sencilla");
        System.out.println("Operacion: suma, resta, multiplicacion, division");
        System.out.print("Digite la operacion a realizar: ");
        String opcion = scanner.nextLine();

        System.out.print("Digite el primer numero: ");
        int num1 = Integer.parseInt(scanner.nextLine());
        System.out.print("Digite el segundo numero: ");
        int num2 = Integer.parseInt(scanner.nextLine());
        float resultado;
        switch (opcion) {
            case "suma":
                resultado = num1 + num2;
                System.out.printf("El resutado de la suma es: %.2f %n", resultado);
                break;
            case "resta":
                resultado = num1 - num2;
                System.out.printf("El resutado de la resta es: %.2f %n", resultado);
                break;
            case "multiplicacion":
                resultado = num1 * num2;
                System.out.printf("El resutado de la multiplicacion es: %.2f %n", resultado);
                break;
            case "division":
                resultado = (float) num1 / num2;
                System.out.printf("El resutado de la division es: %.2f %n", resultado);
                break;
            default:
                System.out.println("La opcion no coincide con ninguno de los casos");
                break;
        }
    }
}
