package ejercicio2;

public class Yate extends Embarcacion implements EmbarcacionOperaciones, YateOperaciones{
    private int cantidadCamarote;
    private int numeroAlquiler;
    private double precioCompra;

    public Yate(Capitan capitan, double precioBaseAlquiler, int anioFabricacion, double eslora, int cantidadCamarote, int numeroAlquiler, double precioCompra) {
        super(capitan, precioBaseAlquiler, anioFabricacion, eslora);
        this.cantidadCamarote = cantidadCamarote;
        this.numeroAlquiler = numeroAlquiler;
        this.precioCompra = precioCompra;
    }

    public Yate() {
    }

    @Override
    public void calcularMontoAlquiler() {
        montoAlquiler = precioBaseAlquiler + recargo;
    }

    @Override
    public void alquilado(Usuario usuario) {
        calcularMontoAlquiler();
        this.usuario = usuario;
        numeroAlquiler++;
        System.out.printf(
                "Alquila Makai%n" +
                "Factura Alquiler - Yate%n" +
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
                "Factura Renta - Yate%n" +
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
    public void calcularComprarYate() {
        if (cantidadCamarote <= 5){
            precioCompra -= calculoUso();
        } else if (cantidadCamarote <= 8){
            if (numeroAlquiler < 50){
                precioCompra -= calculoUso();
            } else {
                precioCompra -= calculoLujo();
            }
        } else {
            if (numeroAlquiler < 80){
                precioCompra -= calculoUso();
            } else {
                precioCompra -= calculoLujo();
            }
        }
        System.out.printf("El precio de compra para este yate es de: %.2f", precioCompra);
    }

    @Override
    public double calculoUso() {
        if (numeroAlquiler > 20 && numeroAlquiler < 50){
            return precioCompra * 0.1;
        } else if (numeroAlquiler > 50){
            return precioCompra * 0.2;
        }
        return 0;
    }

    @Override
    public double calculoLujo() {
        if (cantidadCamarote > 5 && cantidadCamarote <= 8){
            return precioCompra * 0.1;
        } else if (cantidadCamarote > 8){
            return precioCompra * 0.05;
        }
        return 0;
    }
}
