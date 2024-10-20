package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Usuario;

public interface UsuarioService {
    Usuario obtenerUsuario (String nombreUsuario, String contrasena);
}
