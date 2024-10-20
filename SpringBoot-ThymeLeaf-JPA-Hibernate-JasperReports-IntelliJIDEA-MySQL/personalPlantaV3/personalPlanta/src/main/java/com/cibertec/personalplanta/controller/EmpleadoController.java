package com.cibertec.personalplanta.controller;

import com.cibertec.personalplanta.model.Empleado;
import com.cibertec.personalplanta.service.EmpleadoService;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.util.JRLoader;

import java.io.IOException;
import java.io.InputStream;
import org.hibernate.Session;
import jakarta.persistence.EntityManager;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/empleados")
@RequiredArgsConstructor
public class EmpleadoController {

    private final EmpleadoService empleadoService;
    private final EntityManager entityManager;

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

    @GetMapping("/reporteEmpleados")
    public void reporteEmpleados(HttpServletResponse response) throws JRException, SQLException, IOException {
        // Obtén la conexión JDBC desde el EntityManager
        Session session = entityManager.unwrap(Session.class);
        Connection conn = session.doReturningWork(connection -> connection.unwrap(Connection.class));

        // Cargar el reporte .jasper
        InputStream jasperStream = this.getClass().getResourceAsStream("/reportes/rptEmpleados.jasper");
        Map<String, Object> params = new HashMap<>();

        // Cargar el reporte
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(jasperStream);

        // Llenar el reporte con la conexión JDBC obtenida
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, params, conn);

        // Configuración para devolver el reporte PDF en la respuesta HTTP
        response.setContentType("application/x-pdf");
        response.setHeader("Content-disposition", "inline; filename=productos_report.pdf");

        // Enviar el reporte como respuesta
        final OutputStream outputStream = response.getOutputStream();
        JasperExportManager.exportReportToPdfStream(jasperPrint, outputStream);

        // Cerrar la conexión
        conn.close();
    }

}