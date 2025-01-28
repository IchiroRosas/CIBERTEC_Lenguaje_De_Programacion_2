package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.Cliente;
import com.cibertec.lpii_final_rosas_raul.repository.ClienteRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClienteServiceImpl implements ClienteService{

    private final ClienteRepository clienteRepository;

    @Override
    public Cliente obtenerClientePorId(Integer id) {
        return clienteRepository.findById(id).orElseThrow(()->new RuntimeException("Cliente no encontrado para el id: "+id));
    }
}
