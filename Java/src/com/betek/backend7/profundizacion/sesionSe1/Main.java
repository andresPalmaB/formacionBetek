package com.betek.backend7.profundizacion.sesionSe1;

import java.time.LocalDate;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Persona ponente1 = new Persona("Andres", "Palma");
        Persona ponente2 = new Persona("Elvira", "Castellanos");

        Asistente[] asistentes = {
                new Asistente("Rene", "Quintero", "rq@gmail.com"),
                new Asistente("Daniela", "Macias", "dm@gmail.com"),
                new Asistente("Valeria", "Fonseca", "vf@gmail.com"),
                new Asistente("Ingrid", "Castilla", "ic@gmail.com"),
                new Asistente("Bruno", "Cepeda", "bc@gmail.com"),
                new Asistente("Gustavo", "Celin", "gc@gmail.com")
        };

        List<Asistente> lista = Arrays.asList(asistentes);

        Collections.shuffle(lista);

        Evento conferencia1 = new Conferencia("La importancia de ahorrar energia en nuestos hogares",
                LocalDate.of(2024,8, 14), LocalDate.of(2024,8, 15),
                "Auditorio Amira de la Rosa", 5,"Medio Ambiente", ponente1);

        Evento taller = new Taller("La importancia de ahorrar energia en nuestos hogares",
                LocalDate.of(2024,8, 14), LocalDate.of(2024,8, 15),
                "Auditorio Amira de la Rosa", 5,5);

        Evento conferencia2 = new Conferencia("La Sociedad Cambiante",
                LocalDate.of(2024,8, 14), LocalDate.of(2024,8, 15),
                "Auditorio Amira de la Rosa", 5,"Sociologia", ponente2);

        for (Asistente asistente : lista){
            conferencia1.agregarAsistente(asistente);
        }

        Collections.shuffle(lista);

        for (Asistente asistente : lista){
            taller.agregarAsistente(asistente);
        }

        Collections.shuffle(lista);

        for (Asistente asistente : lista){
            conferencia2.agregarAsistente(asistente);
        }

        conferencia1.mostrarInfomacion();
        conferencia2.mostrarInfomacion();
        taller.mostrarInfomacion();

    }
}
