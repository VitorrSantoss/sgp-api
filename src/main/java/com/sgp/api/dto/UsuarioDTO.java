package com.sgp.api.dto;

import java.time.LocalDate;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sgp.api.constants.StatusUsuario;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class UsuarioDTO { // DATA TRANSFER OBJETC
  
  private Long id;
  private String nome;
  private String cpf;
  private String email;
  @JsonFormat(pattern = "dd/MM/yyyy") // formatação da data brasil
  private LocalDate dataNascimento;
  private StatusUsuario status;
  private int idade;

}
