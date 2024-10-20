package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Capacitacion;
import com.cibertec.personalplanta.repository.CapacitacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class CapacitacionServiceImpl implements CapacitacionService {

    private final CapacitacionRepository capacitacionRepository;

    @Autowired
    public CapacitacionServiceImpl(CapacitacionRepository capacitacionRepository){
        this.capacitacionRepository=capacitacionRepository;
    }

    @Override
    public List<Capacitacion> listarCapacitaciones() {
        return capacitacionRepository.findAll();
    }

    @Override
    public void guardarCapacitacion(Capacitacion capacitacion) {
        capacitacionRepository.save(capacitacion);
    }

    @Override
    public Capacitacion obtenerCapacitacionPorId(Integer id) {
        return capacitacionRepository.findById(id)
                .orElseThrow( ()->new RuntimeException("Capacitación no encontrada para el id: "+id));
    }

    @Override
    public void eliminarCapacitacion(Integer id) {
        if(capacitacionRepository.existsById(id)){
            capacitacionRepository.deleteById(id);
        }else{
            throw new RuntimeException("Capacitación no encontrada para el id: "+id);
        }
    }

    @Override
    public List<Capacitacion> listarCapacitacionesPorRangoFecha(Date fechaIni, Date fechaFin) {
        return capacitacionRepository.findCapacitacionPorRangoFecha(fechaIni, fechaFin);
    }

}
