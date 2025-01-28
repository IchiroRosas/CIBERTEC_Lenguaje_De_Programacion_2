package com.cibertec.lpii_final_rosas_raul.repository;

import com.cibertec.lpii_final_rosas_raul.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {
    Usuario findByNombreUsuarioAndContrasena(String nombreUsuario, String contrasena);
}
