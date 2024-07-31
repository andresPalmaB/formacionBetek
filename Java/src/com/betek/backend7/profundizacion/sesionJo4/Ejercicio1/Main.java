package com.betek.backend7.profundizacion.sesionJo4.Ejercicio1;

public class Main {
    public static void main(String[] args) {
        Profesion[] profesions = new Profesion[3];

        for (int i = 0; i < profesions.length; i++){
            switch (i){
                case 0:
                    profesions[i] = new Ingeniero();
                    profesions[i].actualizarValorBono(5000000);
                    System.out.printf("El sueldo para el Ingeniero sera: %d%n", profesions[i].calcularSueldo());
                    break;
                case 1:
                    profesions[i] = new Arquitecto();
                    profesions[i].actualizarValorBono(2000000);
                    System.out.printf("El sueldo para el Arquitecto sera: %d%n", profesions[i].calcularSueldo());
                    break;
                case 2:
                    profesions[i] = new Medico();
                    profesions[i].actualizarValorBono(3000000);
                    System.out.printf("El sueldo para el Medico sera: %d%n", profesions[i].calcularSueldo());
                    break;
            }
        }
    }
}
