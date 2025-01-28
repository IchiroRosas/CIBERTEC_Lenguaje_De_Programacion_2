package com.cibertec.lpii_final_rosas_raul.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name="tb_reclamo")
@Data
@Getter
@Setter
public class Reclamo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_reclamo")
    private Integer id_reclamo;

    @Column(name="fec_reclamo", nullable=false)
    @Temporal(value=TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fec_reclamo;

    @Column(name="des_reclamo", length=200, nullable=false)
    private String des_reclamo;

    @Column(name="estado", nullable=false)
    private int estado=1;



    @ManyToOne()
    @JoinColumn(name="id_cliente")
    private Cliente cliente;

    @ManyToOne
    @JoinColumn(name="id_motivo")
    private MotivoReclamo motivoReclamo;

}
