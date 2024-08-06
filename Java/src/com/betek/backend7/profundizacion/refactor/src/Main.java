package com.betek.backend7.profundizacion.refactor.src;

import com.betek.backend7.profundizacion.refactor.src.Comparendo;

public class Main {

    public static void main(String[] args) {
        Comparendo comparendo =  new Comparendo();
        comparendo.construirFotoMulta(80, "CARRO");
        comparendo.construirFotoMulta(200, "MULA");
        comparendo.construirFotoMulta(40, "CAMION");
        comparendo.construirFotoMulta(40, "AVION");
    }
}