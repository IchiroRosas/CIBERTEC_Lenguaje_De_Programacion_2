package com.cibertec.t2t4wlraul_rosas.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Table(name="Auto")
@Data
@Getter
@Setter
public class Auto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_Auto")
    private Integer id_Auto;

    @Column(name="color", length=100)
    private String color;

    @Column(name="modelo", length=100)
    private String modelo;

    @Column(name="anioFabricacion")
    private Integer anioFabricacion;

    @Column(name="stock")
    private Integer stock;

    @Column(name="precio", scale = 2)
    private BigDecimal precio;

    @ManyToOne
    @JoinColumn(name="id_Marca")
    private Marca id_Marca;

}
