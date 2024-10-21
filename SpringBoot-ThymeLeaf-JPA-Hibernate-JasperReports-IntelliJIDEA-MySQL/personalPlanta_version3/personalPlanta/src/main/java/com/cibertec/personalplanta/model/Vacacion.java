package com.cibertec.personalplanta.model;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "tb_vacacion")
@Getter
@Setter
public class Vacacion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_vacacion")
    private Integer id;

    @Column(name = "periodo", nullable = false)
    private Integer periodo;

    @Column(name = "fecha_inicio", nullable = false)
    @Temporal(value = TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaInicio;

    @Column(name = "fecha_fin", nullable = false)
    @Temporal(value = TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fechaFin;

    @Column(name = "estado")
    private int estado;


    @ManyToOne()
    @JoinColumn(name="id_empleado")
    private Empleado empleado;



}
