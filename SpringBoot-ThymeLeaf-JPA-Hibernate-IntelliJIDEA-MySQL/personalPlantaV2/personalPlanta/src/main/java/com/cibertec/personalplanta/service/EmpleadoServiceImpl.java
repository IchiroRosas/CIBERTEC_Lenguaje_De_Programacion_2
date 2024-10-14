package com.cibertec.personalplanta.service;

import com.cibertec.personalplanta.model.Empleado;
import com.cibertec.personalplanta.model.Usuario;
import com.cibertec.personalplanta.repository.EmpleadoRepository;
import com.cibertec.personalplanta.repository.UsuarioRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class EmpleadoServiceImpl  implements EmpleadoService {

    private final EmpleadoRepository empleadoRepository;
    private final UsuarioRepository usuarioRepository;

    @Override
    public List<Empleado> listarEmpleados() {
        return empleadoRepository.findAll();
    }

    @Override
    public void guardarEmpleado(Empleado empleado) {

        if (empleado.getUsuario().getId() != null) {
            Usuario objUsu = usuarioRepository.findById(empleado.getUsuario().getId())
                    .orElseThrow(() -> new RuntimeException("Usuario no encontrado para el id: " + empleado.getUsuario().getId()));
            empleado.getUsuario().setContrasena(objUsu.getContrasena());
        }
        usuarioRepository.save(empleado.getUsuario());
        empleadoRepository.save(empleado);
    }

    @Override
    public Empleado obtenerEmpleadoPorId(Integer id) {
        return empleadoRepository.findById(id)
                .orElseThrow( ()->new RuntimeException("Empleado no encontrado para el id: "+id));
    }

    @Override
    public void eliminarEmpleado(Integer id) {
        if(empleadoRepository.existsById(id)){
            empleadoRepository.deleteById(id);
        }else{
            throw new RuntimeException("Empleado no encontrado para el id: "+id);
        }
    }

    @Override

    public List<Empleado> listarEmpleadoPorCapacitacionId(Integer idCapacitacion) {
        return empleadoRepository.findAllByCapacitacionesId(idCapacitacion);
    }
}
