package com.cibertec.personalplanta.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="tb_usuario")
@Getter
@Setter
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    private Integer id;
    @Column(name="nombre_usuario", unique = true)
    private String nombreUsuario;
    @Column(name="contrasena")
    private String contrasena;

    @OneToOne(mappedBy = "usuario")
    private Empleado empleado;
}
