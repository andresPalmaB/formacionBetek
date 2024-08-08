package ejercicio1;

import java.time.Duration;
import java.util.Objects;

public class Parqueadero {
    //Atributos de la clase parqueadero
    public static final int FILA = 2;
    public static final int COLUM = 3;
    private final Carro[][] espacioParque;
    private final double tarifaHora;

    //Constructor de la clase parqueadero
    public Parqueadero(double tarifaHora) {
        espacioParque = new Carro[FILA][COLUM];
        this.tarifaHora = tarifaHora;
    }

    //Metodo parquearCarro de la clase parqueadero
    public boolean parquearCarro(Carro carro, int fila, int colum){
        boolean espacioVacio = fila <= FILA && colum <= COLUM && espacioParque[fila][colum] == null;

        if (espacioVacio){
            espacioParque[fila][colum] = carro;
        }
        return espacioVacio;
    }

    //Metodo cobrarPorTiempo de la clase parqueadero
    public double cobrarPorTiempo(Carro carro){
        Duration duracion = Duration.between(carro.getHoraEntrada(), carro.getHoraSalida());

        long hora = (duracion.toMinutes() / 60) + 1;

        for (int i = 0; i < FILA; i++) {
            for (int j = 0; j < COLUM; j++) {
                if (!(espacioParque[i][j] == null)){
                    if (Objects.equals(espacioParque[i][j].getPlaca(), carro.getPlaca())){
                        espacioParque[i][j] = null;
                        return hora * tarifaHora;
                    }
                }
            }
        }
        return 0;
    }

    //Metodo mostrarEstadoParqueadero de la clase parqueadero
    public void mostrarEstadoParqueadero(){
        for (int i = 0; i < FILA; i++){
            for (int j = 0; j < COLUM; j++){
                if (espacioParque[i][j] == null){
                    System.out.print("| | ");
                } else {
                    System.out.print("|X| ");
                }
            }
            System.out.println();
        }
    }


}
