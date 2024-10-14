package com.cibertec.t2t4wlraul_rosas.repository;

import com.cibertec.t2t4wlraul_rosas.model.Auto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AutoRepository extends JpaRepository<Auto, Integer> {
}
