package ejercicio2;

public class Main {
    public static void main(String[] args) {
        Capitan capitan1 = new Capitan("Jose", "Padilla", "AB245698");
        Usuario usuario1 = new Usuario(1140783274,"Mauricio", "KRA 5 # 18 - 47", 3214569876L);

        Yate yate1 = new Yate(capitan1, 80000, 2019, 14, 9, 81, 1000000);
        Velero velero = new Velero(capitan1, 80000, 2021, 14, 5);
        //Compra
        velero.alquilado(usuario1);
    }
}
