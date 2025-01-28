package com.cibertec.lpii_final_rosas_raul.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="tb_usuario")
@Data
@Getter
@Setter
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_usuario")
    private Integer id_usuario;

    @Column(name="nombre_usuario", length = 50, nullable = false)
    private String nombreUsuario;

    @Column(name="contrasena", length = 50, nullable = false)
    private String contrasena;

    @Column(name="estado", nullable = false)
    private int estado=1;



    @OneToOne(mappedBy = "usuario")
    private Cliente cliente;

}
