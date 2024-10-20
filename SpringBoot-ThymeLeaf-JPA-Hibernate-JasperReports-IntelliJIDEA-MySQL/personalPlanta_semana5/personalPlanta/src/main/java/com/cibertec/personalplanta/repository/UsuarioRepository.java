package com.cibertec.personalplanta.repository;

import com.cibertec.personalplanta.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {
}
