package ejercicio2;

public abstract class Embarcacion {
    protected Capitan capitan;
    protected double precioBaseAlquiler;
    protected double recargo;
    protected int anioFabricacion;
    protected double eslora;
    protected double montoAlquiler;
    protected Usuario usuario;

    public Embarcacion(Capitan capitan, double precioBaseAlquiler, int anioFabricacion, double eslora) {
        this.capitan = capitan;
        this.precioBaseAlquiler = precioBaseAlquiler;
        this.anioFabricacion = anioFabricacion;
        this.recargo = calcularRecargo();
        this.eslora = eslora;
    }

    public Embarcacion() {
    }

    protected double calcularRecargo(){
        if (anioFabricacion > 2020){
            return 20000;
        }
        return 0;
    }
}
