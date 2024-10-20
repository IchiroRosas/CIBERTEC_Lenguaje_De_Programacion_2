package com.cibertec.personalplanta.controller;


import com.cibertec.personalplanta.model.Capacitacion;
import com.cibertec.personalplanta.model.Empleado;
import com.cibertec.personalplanta.service.CapacitacionService;
import com.cibertec.personalplanta.service.EmpleadoService;
import lombok.RequiredArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;


@Controller
@RequestMapping("/capacitaciones")
@RequiredArgsConstructor
public class CapacitacionController {

    private final CapacitacionService capacitacionService;
    private final EmpleadoService empleadoService;

    @GetMapping("/listarCapacitaciones")
    public String verPaginaInicio(Model model){
        model.addAttribute("listaCapacitaciones", capacitacionService.listarCapacitaciones());
        return "capacitaciones/capacitaciones";
    }

    @GetMapping("/nuevaCapacitacion")
    public String nuevaCapacitacion(Model model ) {
        Capacitacion capacitacion = new Capacitacion();
        model.addAttribute("capacitacion", capacitacion);
        return "capacitaciones/nuevaCapacitacion";   //Página html
    }

    @PostMapping("/guardarCapacitacion")
    public String guardarCapacitacion(@ModelAttribute("capacitacion") Capacitacion capacitacion){
        capacitacionService.guardarCapacitacion(capacitacion);
        return "redirect:/capacitaciones/listarCapacitaciones";
    }

    @GetMapping("/actualizarCapacitacion/{id}")
    public String actualizarCapacitacion(@PathVariable(value="id") Integer id , Model model){
        Capacitacion capacitacion = capacitacionService.obtenerCapacitacionPorId(id);
        model.addAttribute("capacitacion", capacitacion);
        return "capacitaciones/actualizarCapacitacion"; //Página html
    }

    @GetMapping("/eliminarCapacitacion/{id}")
    public String eliminarCapacitacion(@PathVariable(value="id") Integer id){
        capacitacionService.eliminarCapacitacion(id);
        return "redirect:/capacitaciones/listarCapacitaciones";
    }

    @GetMapping("/inicioBusqueda")
    public String verPaginaInicioBusqueda(){
        return "capacitaciones/buscarCapacitacion";
    }

    @GetMapping("/busquedaCapacitacion")
    public String buscarCapacitacion( Model model,
                                      @RequestParam(value="fechaIni")@DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaIni,
                                      @RequestParam(value="fechaFin")@DateTimeFormat(pattern = "yyyy-MM-dd") Date fechaFin){
        List<Capacitacion> lista= capacitacionService.listarCapacitacionesPorRangoFecha(fechaIni, fechaFin);
        model.addAttribute("listaCapacitaciones", lista);
        model.addAttribute("fechaIni", fechaIni);
        model.addAttribute("fechaFin", fechaFin);
        return "capacitaciones/buscarCapacitacion";
    }


    @GetMapping("/capacitacionDetalle/{id}")
    public String capacitacionDetalle(Model model,  @PathVariable(value = "id")Integer id) {
        List<Empleado> listaEmpleadoCapacitacion= empleadoService.listarEmpleadoPorCapacitacionId(id);
        Capacitacion capacitacion = capacitacionService.obtenerCapacitacionPorId(id);
        model.addAttribute("listaEmpleadoCapacitacion",listaEmpleadoCapacitacion);
        model.addAttribute("capacitacion",capacitacion);
        return "capacitaciones/capacitacionDetalle";
    }

}
