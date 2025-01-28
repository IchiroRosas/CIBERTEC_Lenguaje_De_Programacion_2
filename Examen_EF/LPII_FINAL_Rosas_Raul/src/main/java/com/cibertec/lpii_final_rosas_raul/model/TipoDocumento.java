package com.cibertec.lpii_final_rosas_raul.model;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="tb_tipo_documento")
@Data
@Getter
@Setter
public class TipoDocumento {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id_tipo_doc")
    private Integer id_tipoDoc;

    @Column(name="des_tipo_doc", length = 200, nullable = false)
    private String des_tipoDoc;

}
