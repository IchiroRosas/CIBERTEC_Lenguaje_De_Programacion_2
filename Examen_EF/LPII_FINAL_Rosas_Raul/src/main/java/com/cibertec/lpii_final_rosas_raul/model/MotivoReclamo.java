package com.cibertec.lpii_final_rosas_raul.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="tb_motivo_reclamo")
@Data
@Getter
@Setter
public class MotivoReclamo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_motivo")
    private Integer id_motivo;

    @Column(name="des_motivo", length=200, nullable = false)
    private String des_motivo;

}
