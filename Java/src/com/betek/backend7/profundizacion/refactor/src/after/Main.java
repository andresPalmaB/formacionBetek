package com.betek.backend7.profundizacion.refactor.src.after;
//80 200 40 40
public class Main {
    public static void main(String[] args) {
        ComparendoVehiculo carro = new ComparendoCarro();
        ComparendoVehiculo camion = new ComparendoCamion();
        ComparendoVehiculo mula = new ComparendoMula();
        ComparendoVehiculo avion = new ComparendoVehiculo("AVION");

        carro.construirFotoMulta(80);
        camion.construirFotoMulta(200);
        mula.construirFotoMulta(40);
        avion.construirFotoMulta(40);
    }
}
