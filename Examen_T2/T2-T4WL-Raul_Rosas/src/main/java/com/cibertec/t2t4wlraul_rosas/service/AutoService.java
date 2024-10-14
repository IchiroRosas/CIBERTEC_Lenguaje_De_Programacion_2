package com.cibertec.t2t4wlraul_rosas.service;

import com.cibertec.t2t4wlraul_rosas.model.Auto;
import java.util.List;

public interface AutoService {

    List<Auto> listarAutos();
    void guardarAuto(Auto auto);
    Auto obtenerAutoPorId(Integer id);
    void eliminarAuto(Integer id);

}
