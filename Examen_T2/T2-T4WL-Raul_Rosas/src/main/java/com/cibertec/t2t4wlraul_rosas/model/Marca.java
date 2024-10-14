package com.cibertec.t2t4wlraul_rosas.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="Marca")
@Data
@Getter
@Setter
public class Marca {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_Marca")
    private Integer id_Marca;

    @Column(name="descripcion", length=100)
    private String descripcion;

}
