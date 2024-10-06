package com.cibertec.personalplanta.controller;

import com.cibertec.personalplanta.model.Empleado;
import com.cibertec.personalplanta.service.EmpleadoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/empleados")
@RequiredArgsConstructor
public class EmpleadoController {

    private final EmpleadoService empleadoService;

    @GetMapping("/listarEmpleados")
    public String verPaginaInicio(Model model){
        model.addAttribute("listaEmpleados", empleadoService.listarEmpleados());
        return "empleados/empleados";
    }

    @GetMapping("/nuevoEmpleado")
    public String nuevoEmpleado(Model model){
        model.addAttribute("empleado", new Empleado());
        return "empleados/nuevoEmpleado";
    }

    @PostMapping("/guardarEmpleado")
    public String guardarEmpleado(@ModelAttribute("empleado") Empleado empleado){
        empleadoService.guardarEmpleado(empleado);
        return "redirect:/empleados/listarEmpleados";
    }

    @GetMapping("/actualizarEmpleado/{id}")
    public String actualizarEmpleado(@PathVariable("id") Integer id, Model model){
        model.addAttribute("empleado", empleadoService.obtenerEmpleadoPorId(id));
        return "empleados/actualizarEmpleado";
    }

    @GetMapping("/eliminarEmpleado/{id}")
    public String eliminarEmpleado(@PathVariable("id") Integer id){
        empleadoService.eliminarEmpleado(id);
        return "redirect:/empleados/listarEmpleados";
    }
}
