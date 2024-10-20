package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Vacacion;
import com.cibertec.personalplanta.repository.VacacionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class VacacionServiceImpl implements VacacionService {

    private final VacacionRepository vacacionRepository;

    @Override
    public List<Vacacion> listaVacaciones() {
        return vacacionRepository.findAll();
    }

    @Override
    public void guardarVacaciones(Vacacion vacacion) {
        vacacionRepository.save(vacacion);
    }

    @Override
    public Vacacion obtenerVacacionesPorId(Integer id) {
         return vacacionRepository.findById(id)
                .orElseThrow( ()->new RuntimeException("Vacación no encontrada para el id: "+id));
    }

    @Override
    public void eliminarVacaciones(Integer id) {
        vacacionRepository.deleteById(id);
    }
}
