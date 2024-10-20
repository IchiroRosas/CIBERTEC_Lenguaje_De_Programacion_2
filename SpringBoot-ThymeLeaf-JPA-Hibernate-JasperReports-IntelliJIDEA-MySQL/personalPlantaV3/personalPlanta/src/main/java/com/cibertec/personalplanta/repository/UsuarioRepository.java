package com.cibertec.personalplanta.repository;

import com.cibertec.personalplanta.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario,Integer> {
    Usuario findByNombreUsuarioAndContrasena(String nombreUsuario, String contrasena);
}
