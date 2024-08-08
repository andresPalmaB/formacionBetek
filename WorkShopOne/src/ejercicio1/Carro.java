package ejercicio1;

import java.time.LocalTime;

public class Carro {
    //Atributos de la clase Carro
    private final String placa;
    private final String marca;
    private final int modelo;
    private LocalTime horaEntrada;
    private LocalTime horaSalida;

    //Constructor de la clase Carro
    public Carro(String placa, String marca, int modelo) {
        this.placa = placa;
        this.marca = marca;
        this.modelo = modelo;
    }

    //Getter de la clase Carro
    public String getPlaca() {
        return placa;
    }

    public String getMarca() {
        return marca;
    }

    public int getModelo() {
        return modelo;
    }

    public LocalTime getHoraEntrada() {
        return horaEntrada;
    }

    public LocalTime getHoraSalida() {
        return horaSalida;
    }

    public void setHoraEntrada(LocalTime horaEntrada) {
        this.horaEntrada = horaEntrada;
    }

    public void setHoraSalida(int hora, int min) {
        this.horaSalida = LocalTime.of(hora, min);
    }

    public void setHoraEntrada(int hora, int min) {
        this.horaEntrada = LocalTime.of(hora, min);
    }
}
