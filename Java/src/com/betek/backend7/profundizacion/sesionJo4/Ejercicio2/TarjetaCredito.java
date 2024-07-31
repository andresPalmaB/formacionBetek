package com.betek.backend7.profundizacion.sesionJo4.Ejercicio2;

import java.text.NumberFormat;
import java.time.YearMonth;
import java.util.Locale;

public abstract class TarjetaCredito {
    //Atributos
    private String emisor;
    private long cupo;
    private String numeroTarjeta;
    private int cvv;
    private YearMonth fechaVencimiento;

    //Constructor
    public TarjetaCredito() {
        this.emisor = "";
        this.cupo = 0;
        this.numeroTarjeta = "1234567898765432";
        this.cvv = 0;
        this.fechaVencimiento = YearMonth.now();
    }

    public TarjetaCredito(String emisor, long cupo, String numeroTarjeta, int cvv, YearMonth fechaVencimiento) {
        this.emisor = emisor;
        this.cupo = cupo;
        this.numeroTarjeta = numeroTarjeta;
        this.cvv = cvv;
        this.fechaVencimiento = fechaVencimiento;
    }

    //Getter and Setter
    public String getEmisor() {
        return emisor;
    }

    public void setEmisor(String emisor) {
        this.emisor = emisor;
    }

    public long getCupo() {
        return cupo;
    }

    public void setCupo(long cupo) {
        this.cupo = cupo;
    }

    public String getNumeroTarjeta() {
        return numeroTarjeta;
    }

    public void setNumeroTarjeta(String numeroTarjeta) {
        this.numeroTarjeta = numeroTarjeta;
    }

    public int getCvv() {
        return cvv;
    }

    public void setCvv(int cvv) {
        this.cvv = cvv;
    }

    public YearMonth getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(YearMonth fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    //Metodos
    public void imprimir(){
        System.out.println("Datos Tarjeta de Credito");
        System.out.printf("Emisor: %s%n", getEmisor());
        System.out.printf("Cupo: %s%n", NumberFormat.getCurrencyInstance(new Locale("es", "CO")).format(getCupo()));
        System.out.printf("Numero de Tarjeta: %s%n", getNumeroTarjeta().replaceAll("(.{4})(?!$)", "$1 "));
        System.out.printf("CVV: %d%n", getCvv());
        System.out.printf("Fecha de vencimiento: %s%n", getFechaVencimiento().toString());
    }
}
