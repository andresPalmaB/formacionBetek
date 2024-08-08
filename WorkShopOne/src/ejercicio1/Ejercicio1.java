package ejercicio1;

import java.util.Random;

public class Ejercicio1 {
    public static void main(String[] args) {
        Random random = new Random();
        //Instacion de la clase Parqueadero
        Parqueadero parqueadero = new Parqueadero(3500);

        //Creacion de objetos clase Carro
        Carro[] carros = new Carro[7];
        String[] marcas = {"Mazda", "Chevrolet", "Volkwagen", "Hyundai", "Renault", "Toyota", "Mercedez", "Audi"};

        //Objetos carros con placas, marcas y modelos, y tambien dice la hora de ingreso
        for (int i = 0; i < 7; i++){
            carros[i] = new Carro(generadorDePlacas(), marcas[random.nextInt(7)], random.nextInt(64) + 1960);
        }

        estacionarCarro(parqueadero, carros[0], 0, 2, 8, 15);
        parqueadero.mostrarEstadoParqueadero();
        estacionarCarro(parqueadero, carros[6], 0, 0, 10, 30);
        parqueadero.mostrarEstadoParqueadero();
        estacionarCarro(parqueadero, carros[2], 1, 1, 12, 21);
        parqueadero.mostrarEstadoParqueadero();
        estacionarCarro(parqueadero, carros[3], 1, 0, 18, 14);
        parqueadero.mostrarEstadoParqueadero();

        cobrarTiempoParqueo(parqueadero, carros[6], 13,0);
        parqueadero.mostrarEstadoParqueadero();
        cobrarTiempoParqueo(parqueadero, carros[0], 11,15);
        parqueadero.mostrarEstadoParqueadero();
        cobrarTiempoParqueo(parqueadero, carros[2], 13,0);
        parqueadero.mostrarEstadoParqueadero();
        cobrarTiempoParqueo(parqueadero, carros[3], 20,13);
        parqueadero.mostrarEstadoParqueadero();
    }

    public static void cobrarTiempoParqueo(Parqueadero parqueadero, Carro carro, int horaSalida, int minSalida){
        carro.setHoraSalida(horaSalida, minSalida);

        double resultado = parqueadero.cobrarPorTiempo(carro);

        if (resultado == 0){
            System.out.println("Se ha producido un error.%n");
        } else {
            System.out.printf("El cobro para el carro con placa %s es de: %.2f%n", carro.getPlaca(), resultado);
        }
    }

    public static void estacionarCarro(Parqueadero parqueadero, Carro carro, int fila, int colum, int horaEntrada, int minEntrada){
        carro.setHoraEntrada(horaEntrada, minEntrada);
        if (parqueadero.parquearCarro(carro, fila, colum)){
            System.out.printf("El carro de placa %s fue estacionado correctamente.%n", carro.getPlaca());
        } else {
            if (fila >= Parqueadero.FILA && colum >= Parqueadero.COLUM){
                System.out.printf("El carro de placa %s no pudo ingresar por que se equivoco al introducir referencia%n", carro.getPlaca());
            } else {
                System.out.printf("El carro de placa %s no pudo ingresar por que se el parqueo esta ocupado%n", carro.getPlaca());
            }
        }
    }

    public static String generadorDePlacas(){
        Random random = new Random();
        String placa = "";

        for (int i = 0; i < 4; i++){
            if (i < 3){
                placa += (char) (random.nextInt(26) + 'A');
            } else {
                placa += String.format(" %03d", random.nextInt(999));
            }
        }
        return placa;
    }
}
