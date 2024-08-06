package com.betek.backend7.profundizacion.refactor.src.after;

public class ComparendoCarro extends ComparendoVehiculo {
    public ComparendoCarro(){
        super(65, 66, 85, "CARRO");
    }

    @Override
    public void construirFotoMulta(int velocidad) {
        int cpa = calcularComparendo(velocidad);
        String txt = enviarCorreoFotomulta();
        System.out.println("----el tipo de comparendo es: " + cpa + " ----cuerpo del correo " + txt);
    }

    @Override
    public int calcularComparendo(int velocidad) {
        if(velocidad <= super.getLimiteInferior()) {
            return 0;
        }else if (velocidad >= super.getLimiteInferiorIntermedio() && velocidad <= super.getLimiteSuperior()) {
            return 1;
        }
        return 2;
    }

    @Override
    public String enviarCorreoFotomulta() {
        String cuerpoMensaje = "//enviando correo para el tipo Carro.";
        String asunto = "//asunto: comparendo Carro ";
        return   asunto + cuerpoMensaje;
    }
}
