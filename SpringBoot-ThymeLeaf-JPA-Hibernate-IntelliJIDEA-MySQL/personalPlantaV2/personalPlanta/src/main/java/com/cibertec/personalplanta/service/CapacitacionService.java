package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Capacitacion;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Date;
import java.util.List;

public interface CapacitacionService {

    List <Capacitacion> listarCapacitaciones();
    void guardarCapacitacion(Capacitacion capacitacion);
    Capacitacion obtenerCapacitacionPorId(Integer id);
    void eliminarCapacitacion(Integer id);

    List<Capacitacion> listarCapacitacionesPorRangoFecha(Date fechaIni, Date fechaFin);
   }


