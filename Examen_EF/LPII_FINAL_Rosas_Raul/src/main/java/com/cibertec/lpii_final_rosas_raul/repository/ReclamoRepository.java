package com.cibertec.lpii_final_rosas_raul.repository;

import com.cibertec.lpii_final_rosas_raul.model.Reclamo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReclamoRepository extends JpaRepository<Reclamo, Integer> {
}
