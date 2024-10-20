package com.cibertec.personalplanta.repository;

import com.cibertec.personalplanta.model.Capacitacion;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface CapacitacionRepository extends JpaRepository<Capacitacion,Integer> {

    @Query( value=" SELECT * FROM tb_capacitacion c WHERE c.fecha_inicio >= :fechaIni  AND c.fecha_fin <= :fechaFin " ,  nativeQuery = true)
    List<Capacitacion> findCapacitacionPorRangoFecha(@Param("fechaIni") Date fechaIni, @Param("fechaFin") Date fechaFin);
}


