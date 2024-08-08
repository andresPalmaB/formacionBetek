package ejercicio2;

public class Usuario {
    private int identificacion;
    private String nombre;
    private String direccion;
    private long telefono;

    public Usuario(int identificacion, String nombre, String direccion, long telefono) {
        this.identificacion = identificacion;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public long getTelefono() {
        return telefono;
    }
}
