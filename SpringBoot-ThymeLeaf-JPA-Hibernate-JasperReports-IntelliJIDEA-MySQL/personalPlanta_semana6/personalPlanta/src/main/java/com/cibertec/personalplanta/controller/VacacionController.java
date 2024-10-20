package com.cibertec.personalplanta.controller;

import com.cibertec.personalplanta.model.Vacacion;
import com.cibertec.personalplanta.service.EmpleadoService;
import com.cibertec.personalplanta.service.VacacionService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/vacaciones")
@RequiredArgsConstructor
public class VacacionController {

    private final VacacionService vacacionService;
    private final EmpleadoService empleadoService;

    @GetMapping("/listarVacaciones")
    public String verPaginaInicio( Model model){
        List<Vacacion> vacaciones = vacacionService.listaVacaciones();
        model.addAttribute("listaVacaciones",vacaciones);

        return "vacaciones/vacaciones";
    }

    @GetMapping("/nuevaVacacion")
    public String nuevaVacacion( Model model) {
        Vacacion vacacion = new Vacacion();
        model.addAttribute("vacacion", vacacion);
        model.addAttribute("empleados", empleadoService.listarEmpleados());
        return "vacaciones/nuevaVacacion";
    }

    @PostMapping("/guardarVacacion")
    public String guardarVacacion(@ModelAttribute("vacacion") Vacacion vacacion){
        vacacionService.guardarVacaciones(vacacion);

        return "redirect:/vacaciones/listarVacaciones";
    }

    @GetMapping("/actualizarVacacion/{id}")
    public String actualizarVacacion(@PathVariable(value = "id") Integer id,Model model) {
        Vacacion vacacion = vacacionService.obtenerVacacionesPorId(id);

        model.addAttribute("vacacion", vacacion);
        model.addAttribute("empleados", empleadoService.listarEmpleados());
        return "vacaciones/actualizarVacacion";
    }

    @GetMapping("/eliminarVacacion/{id}")
    public String eliminarVacacion(@PathVariable(value = "id") Integer id) {
        vacacionService.eliminarVacaciones(id);

        return "redirect:/vacaciones/listarVacaciones";
    }
}
