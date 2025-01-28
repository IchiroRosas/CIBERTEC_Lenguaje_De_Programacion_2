package com.cibertec.lpii_final_rosas_raul.service;

import com.cibertec.lpii_final_rosas_raul.model.Usuario;

public interface UsuarioService {
    Usuario obtenerUsuario (String nombreUsuario, String contrasena);
}
