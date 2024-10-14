package com.cibertec.t2t4wlraul_rosas.service;

import com.cibertec.t2t4wlraul_rosas.model.Marca;
import com.cibertec.t2t4wlraul_rosas.repository.MarcaRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class MarcaServiceImpl implements MarcaService {

    private final MarcaRepository marcaRepository;

    @Override
    public List<Marca> listarMarcas() {
        return marcaRepository.findAll();
    }
}
