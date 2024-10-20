package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.dto.EmpleadoDTO;
import com.cibertec.personalplanta.model.Empleado;

import java.util.List;

public interface EmpleadoService {
    List<Empleado> listarEmpleados();
    void guardarEmpleado(Empleado empleado);
    Empleado obtenerEmpleadoPorId(Integer id);
    void eliminarEmpleado(Integer id);

    List<EmpleadoDTO> listarEmpleadoPorCapacitacionId(Integer idCapacitacion);
}
