package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Usuario;
import com.cibertec.personalplanta.repository.UsuarioRepository;
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
