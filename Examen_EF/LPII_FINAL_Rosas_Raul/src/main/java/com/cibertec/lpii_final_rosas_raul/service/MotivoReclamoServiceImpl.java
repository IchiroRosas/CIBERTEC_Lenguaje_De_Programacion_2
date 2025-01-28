package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.MotivoReclamo;
import com.cibertec.lpii_final_rosas_raul.repository.MotivoReclamoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MotivoReclamoServiceImpl implements MotivoReclamoService{

    private final MotivoReclamoRepository motivoReclamoRepository;

    @Override
    public List<MotivoReclamo> listarMotivos() {
        return motivoReclamoRepository.findAll();
    }
}
