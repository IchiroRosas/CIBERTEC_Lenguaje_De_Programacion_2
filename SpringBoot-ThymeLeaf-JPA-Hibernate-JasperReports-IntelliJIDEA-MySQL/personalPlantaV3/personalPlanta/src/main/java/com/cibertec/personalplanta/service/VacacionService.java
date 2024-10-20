package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Vacacion;

import java.util.List;

public interface VacacionService {

    List<Vacacion> listaVacaciones();

    void guardarVacaciones(Vacacion vacacion);

    Vacacion obtenerVacacionesPorId(Integer id);

    void eliminarVacaciones(Integer id);

}
