package ejercicio2;

public class Velero extends Embarcacion implements EmbarcacionOperaciones, VeleroOperaciones {
    private final int cantidadMastiles;

    public Velero(Capitan capitan, double precioBaseAlquiler, int anioFabricacion, double eslora, int cantidadMastiles) {
        super(capitan, precioBaseAlquiler, anioFabricacion, eslora);
        this.cantidadMastiles = cantidadMastiles;
        this.recargo += calcularRecargoVelero();
    }

    @Override
    public void calcularMontoAlquiler() {
        montoAlquiler = precioBaseAlquiler + recargo;
    }

    @Override
    public void alquilado(Usuario usuario) {
        calcularMontoAlquiler();
        this.usuario = usuario;
        System.out.printf(
                "Alquila Makai%n" +
                "Factura Alquiler - Velero%n" +
                "__________________________%n" +
                "Persona quien alquila%n" +
                "Nombre:         %s%n" +
                "Identificacion: %d%n" +
                "Direccion:      %s%n" +
                "Telefono:       %d%n" +
                "__________________________%n" +
                "Capitan Asignado%n" +
                "Nombre: %s %s%n" +
                "__________________________%n" +
                "Monto de alquiler%n" +
                "Precio base:    %.2f%n" +
                "Precio Recargo: %.2f%n" +
                "Precio Total:   %.2f%n",
                usuario.getNombre(), usuario.getIdentificacion(), usuario.getDireccion(), usuario.getTelefono(),
                capitan.getNombre(), capitan.getApellido(),
                precioBaseAlquiler, recargo, montoAlquiler);
        System.out.println();
    }

    @Override
    public void devolucion() {
        System.out.printf(
                "Alquila Makai%n" +
                "Factura Renta - Velero%n" +
                "__________________________%n" +
                "Persona quien alquilo%n" +
                "Nombre:         %s%n" +
                "Identificacion: %d%n" +
                "Direccion:      %s%n" +
                "Telefono:       %d%n" +
                "__________________________%n" +
                "Monto de alquiler%n" +
                "Precio base:    %.2f%n" +
                "Precio Recargo: %.2f%n" +
                "Precio Total:   %.2f%n",
                usuario.getNombre(), usuario.getIdentificacion(), usuario.getDireccion(), usuario.getTelefono(),
                precioBaseAlquiler, recargo, montoAlquiler);
        this.usuario = null;
        System.out.println();
    }

    @Override
    public double calcularRecargoVelero() {
        if (cantidadMastiles > 4){
            return super.precioBaseAlquiler * 0.1;
        }
        return 0;
    }
}
