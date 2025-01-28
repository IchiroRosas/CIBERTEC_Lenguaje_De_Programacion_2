package com.cibertec.lpii_final_rosas_raul.controller;


import com.cibertec.lpii_final_rosas_raul.service.ClienteService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/clientes")
@RequiredArgsConstructor
@SessionAttributes("usuario")
public class ClienteController {

    private final ClienteService clienteService;

    @GetMapping("/infoCliente/{id}")
    public String infoCliente(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("cliente", clienteService.obtenerClientePorId(id));
        return "clientes/cliente";
    }

}
