package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.Reclamo;
import com.cibertec.lpii_final_rosas_raul.repository.ReclamoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReclamoServiceImpl implements ReclamoService {

    private final ReclamoRepository reclamoRepository;

    @Override
    public List<Reclamo> listarReclamos() {
        return reclamoRepository.findAll();
    }

    @Override
    public void guardarReclamo(Reclamo reclamo) {
        reclamoRepository.save(reclamo);
    }

    @Override
    public Reclamo obtenerReclamoPorId(Integer id) {
        return reclamoRepository.findById(id).orElseThrow( ()->new RuntimeException("Reclamo no encontrado para el id: "+id));
    }

    @Override
    public void eliminarReclamo(Integer id) {
        reclamoRepository.deleteById(id);
    }
}
