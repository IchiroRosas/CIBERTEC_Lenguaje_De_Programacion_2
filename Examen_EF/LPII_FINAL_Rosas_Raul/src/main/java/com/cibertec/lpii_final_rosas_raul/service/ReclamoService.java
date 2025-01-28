package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.Reclamo;

import java.util.List;

public interface ReclamoService {
    List<Reclamo> listarReclamos();
    void guardarReclamo(Reclamo reclamo);
    Reclamo obtenerReclamoPorId(Integer id);
    void eliminarReclamo(Integer id);
}
