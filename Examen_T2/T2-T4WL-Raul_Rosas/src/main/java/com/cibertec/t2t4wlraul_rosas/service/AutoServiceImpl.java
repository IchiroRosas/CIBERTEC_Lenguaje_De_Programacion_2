package com.cibertec.t2t4wlraul_rosas.service;

import com.cibertec.t2t4wlraul_rosas.model.Auto;
import com.cibertec.t2t4wlraul_rosas.repository.AutoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AutoServiceImpl implements AutoService {

    private final AutoRepository autoRepository;

    @Override
    public List<Auto> listarAutos() {
        return autoRepository.findAll();
    }

    @Override
    public void guardarAuto(Auto auto) {
        autoRepository.save(auto);
    }

    @Override
    public Auto obtenerAutoPorId(Integer id) {
        return autoRepository.findById(id)
                .orElseThrow( () -> new RuntimeException("Auto no encontrado para el id: "+id) );
    }

    @Override
    public void eliminarAuto(Integer id) {
        if(autoRepository.existsById(id)){
            autoRepository.deleteById(id);
        }else{
            throw new RuntimeException("Auto no encontrado para el id: "+id);
        }
    }
}
