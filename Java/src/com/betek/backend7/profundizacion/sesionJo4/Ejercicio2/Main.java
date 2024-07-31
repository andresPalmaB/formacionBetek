package com.betek.backend7.profundizacion.sesionJo4.Ejercicio2;

public class Main {
    public static void main(String[] args) {
        TarjetaCredito visa = new Clasica("Visa");
        TarjetaCredito masterCard = new Dorada("MarterCard");
        TarjetaCredito americanExpress = new Platinum("American Express");
        TarjetaCredito dinnerClub = new Black("Dinner Club");

        visa.imprimir();
        System.out.println();
        masterCard.imprimir();
        System.out.println();
        americanExpress.imprimir();
        System.out.println();
        dinnerClub.imprimir();

    }
}
