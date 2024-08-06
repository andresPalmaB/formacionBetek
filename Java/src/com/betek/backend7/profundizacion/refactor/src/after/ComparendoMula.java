package com.betek.backend7.profundizacion.refactor.src.after;

public class ComparendoMula extends ComparendoVehiculo {
    public ComparendoMula() {
        super(95,96,110, "MULA");
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
        String cuerpoMensaje = "//enviando correo para el tipo Mula.";
        String asunto = "//asunto: comparendo Mula ";
        return   asunto + cuerpoMensaje;
    }
}
