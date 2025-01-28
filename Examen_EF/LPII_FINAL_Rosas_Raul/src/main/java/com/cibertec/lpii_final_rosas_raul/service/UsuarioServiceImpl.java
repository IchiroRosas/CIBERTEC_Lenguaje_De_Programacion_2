package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.Usuario;
import com.cibertec.lpii_final_rosas_raul.repository.UsuarioRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UsuarioServiceImpl implements UsuarioService{

    private final UsuarioRepository usuarioRepository;

    @Override
    public Usuario obtenerUsuario(String nombreUsuario, String contrasena) {
        return usuarioRepository.findByNombreUsuarioAndContrasena(nombreUsuario, contrasena);
    }
}
