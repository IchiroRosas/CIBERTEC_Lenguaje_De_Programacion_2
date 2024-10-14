package com.cibertec.t2t4wlraul_rosas.controller;

import com.cibertec.t2t4wlraul_rosas.model.Auto;
import com.cibertec.t2t4wlraul_rosas.service.AutoService;
import com.cibertec.t2t4wlraul_rosas.service.MarcaService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/autos")
@RequiredArgsConstructor
public class AutoController {

    private final AutoService autoService;
    private final MarcaService marcaService;

    @GetMapping("/listarAutos")
    public String verPaginaInicio(Model model){
        model.addAttribute("listaAutos", autoService.listarAutos());
        return "autos/autos";
    }

    @GetMapping("/nuevoAuto")
    public String nuevoAuto(Model model){
        model.addAttribute("auto", new Auto());
        model.addAttribute("marcas", marcaService.listarMarcas());
        return "autos/nuevoAuto";
    }

    @PostMapping("/guardarAuto")
    public String guardarAuto(@ModelAttribute("auto") Auto auto){
        autoService.guardarAuto(auto);
        return "redirect:/autos/listarAutos";
    }

    @GetMapping("/actualizarAuto/{id}")
    public String actualizarAuto(@PathVariable("id") Integer id, Model model){
        model.addAttribute("auto", autoService.obtenerAutoPorId(id));
        model.addAttribute("marcas", marcaService.listarMarcas());
        return "autos/actualizarAuto";
    }

    @GetMapping ("/eliminarAuto/{id}")
    public String eliminarEmpleado(@PathVariable("id") Integer id){
        autoService.eliminarAuto(id);
        return "redirect:/autos/listarAutos";
    }

}
