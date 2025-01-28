package com.cibertec.lpii_final_rosas_raul.controller;

import com.cibertec.lpii_final_rosas_raul.model.Reclamo;
import com.cibertec.lpii_final_rosas_raul.service.MotivoReclamoService;
import com.cibertec.lpii_final_rosas_raul.service.ReclamoService;
import jakarta.persistence.EntityManager;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.hibernate.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.util.JRLoader;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/reclamos")
@RequiredArgsConstructor
@SessionAttributes("usuario")
public class ReclamoController {
    private final ReclamoService reclamoService;
    private final MotivoReclamoService motivoReclamoService;
    private final EntityManager entityManager;

    @GetMapping("/listarReclamos")
    public String verPaginaInicio(Model model) {
        model.addAttribute("listaReclamos", reclamoService.listarReclamos());
        return "reclamos/reclamo";
    }

    @GetMapping("/nuevoReclamo")
    public String nuevoReclamo(Model model){
        model.addAttribute("reclamo", new Reclamo());
        model.addAttribute("motivoReclamo", motivoReclamoService.listarMotivos());
        return "reclamos/nuevoReclamo";
    }

    @PostMapping("/guardarReclamo")
    public String guardarReclamo(@ModelAttribute("reclamo") Reclamo reclamo){
        reclamoService.guardarReclamo(reclamo);
        return "redirect:/reclamos/listarReclamos";
    }

    @GetMapping("/actualizarReclamo/{id}")
    public String actualizarReclamo(@PathVariable("id") Integer id, Model model){
        model.addAttribute("reclamo", reclamoService.obtenerReclamoPorId(id));
        model.addAttribute("motivoReclamo", motivoReclamoService.listarMotivos());
        return "reclamos/actualizarReclamo";
    }

    @GetMapping("/eliminarReclamo/{id}")
    public String eliminarReclamo(@PathVariable("id") Integer id) {
        reclamoService.eliminarReclamo(id);
        return "redirect:/reclamos/listarReclamos";
    }

    @GetMapping("/reporteReclamos")
    public void reporteReclamos(HttpServletResponse response) throws JRException, SQLException, IOException {
        // Obtén la conexión JDBC desde el EntityManager
        Session session = entityManager.unwrap(Session.class);
        Connection conn = session.doReturningWork(connection -> connection.unwrap(Connection.class));

        // Cargar el reporte .jasper
        InputStream jasperStream = this.getClass().getResourceAsStream("/reportes/rptReclamos.jasper");
        Map<String, Object> params = new HashMap<>();

        // Cargar el reporte
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);

        // Llenar el reporte con la conexión JDBC obtenida
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, conn);

        // Configuración para devolver el reporte PDF en la respuesta HTTP
        response.setContentType("application/x-pdf");
        response.setHeader("Content-disposition", "inline; filename=ReclamosReporte.pdf");

        // Enviar el reporte como respuesta
        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);

        // Cerrar la conexión
        conn.close();
    }
}
