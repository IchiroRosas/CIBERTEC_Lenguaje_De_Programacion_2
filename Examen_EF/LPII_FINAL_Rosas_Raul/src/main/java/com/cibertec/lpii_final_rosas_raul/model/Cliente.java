package com.cibertec.lpii_final_rosas_raul.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name="tb_cliente")
@Data
@Getter
@Setter
public class Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_cliente")
    private Integer id_cliente;

    @Column(name="num_documento", length = 50, nullable = false)
    private String num_documento;

    @Column(name="nombre", length = 200, nullable = false)
    private String nombre;

    @Column(name="ape_pat", length = 200, nullable = false)
    private String ape_pat;

    @Column(name="ape_mat", length = 200, nullable = false)
    private String ape_mat;

    @Column(name="fec_nacimiento", nullable = false)
    @Temporal(value=TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date fec_nacimiento;

    @Column(name="email", length = 200, nullable = false)
    private String email;




    @ManyToOne()
    @JoinColumn(name="id_tipo_doc")
    private TipoDocumento tipoDocumento;

    @OneToOne
    @JoinColumn(name="id_usuario")
    private Usuario usuario;

}
