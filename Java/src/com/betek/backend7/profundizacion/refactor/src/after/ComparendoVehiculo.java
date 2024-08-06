package com.betek.backend7.profundizacion.refactor.src.after;

public class ComparendoVehiculo {
    private int limiteInferior;
    private int limiteInferiorIntermedio;
    private int limiteSuperior;
    private final String tipo;

    public ComparendoVehiculo(int limiteInferior, int limiteInferiorIntermedio, int limiteSuperior, String tipo) {
        this.limiteInferior = limiteInferior;
        this.limiteInferiorIntermedio = limiteInferiorIntermedio;
        this.limiteSuperior = limiteSuperior;
        this.tipo = tipo;
    }

    public ComparendoVehiculo(String tipo) {
        this.tipo = tipo;
    }

    public void construirFotoMulta(int velocidad) {
        System.out.printf("no hay calculo para el tipo de vehiculo %s", tipo);
    }

    public int calcularComparendo(int velocidad) {
        return -1;
    }

    public String enviarCorreoFotomulta() {
        return null;
    }

    public int getLimiteInferior() {
        return limiteInferior;
    }

    public int getLimiteInferiorIntermedio() {
        return limiteInferiorIntermedio;
    }

    public int getLimiteSuperior() {
        return limiteSuperior;
    }
}
