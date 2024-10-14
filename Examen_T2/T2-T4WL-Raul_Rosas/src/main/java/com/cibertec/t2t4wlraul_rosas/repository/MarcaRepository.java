package com.cibertec.t2t4wlraul_rosas.repository;

import com.cibertec.t2t4wlraul_rosas.model.Marca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MarcaRepository extends JpaRepository<Marca, Integer> {
}
