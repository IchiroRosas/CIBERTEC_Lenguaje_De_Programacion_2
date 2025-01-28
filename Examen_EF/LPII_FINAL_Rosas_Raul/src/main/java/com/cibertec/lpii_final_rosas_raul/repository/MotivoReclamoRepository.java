package com.cibertec.lpii_final_rosas_raul.repository;

import com.cibertec.lpii_final_rosas_raul.model.MotivoReclamo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MotivoReclamoRepository extends JpaRepository<MotivoReclamo, Integer> {
}
