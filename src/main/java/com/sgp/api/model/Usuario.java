package com.sgp.api.model;

import java.time.LocalDate;
import java.time.Period;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sgp.api.constants.StatusUsuario;
import com.sgp.api.dto.UsuarioDTO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // Facilitador dos GETTER'S AND SETTER'S
@AllArgsConstructor // Facilitador do CONSTRUTOR com ARGUMENTOS
@NoArgsConstructor  // Facilitador do CONSTRUTOR VAZIO
@Entity(name = "tb_usuarios") // Nomeção da classe como entidade e nomeando a tabela para o banco de dados

public class Usuario {
  
  @Id // Atribuindo o id como chave primaria e como auto_increment
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @NotNull(message = "CAMPO 'nome' É OBRIGATÓRIO") // O campo tem preenchimento obrigatório à nivel de REQUISIÇÃO
  @Column(nullable = false) // NOT NULL ou seja : O campo tem o preenchimento obrigatório à nível de BANCO DE DADOS
  private String nome;

  @NotNull(message = "CAMPO 'cpf' É OBRIGATÓRIO") // O campo tem preenchimento obrigatório à nivel de REQUISIÇÃO
  @Pattern(
    regexp = "\\d{3}.\\d{3}.\\d{3}-\\d{2}",             // Definindo padrão de validação para CPF no Brasil
    message = "O CAMPO 'cpf' DEVE ESTAR NO FORMATO"
  )
  @Column(nullable = false, unique = true) // NOT NULL ou seja : O campo tem o preenchimento obrigatório & UNICO
  private String cpf;


  @Pattern(
    regexp = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$", // Validação para endereços de email
    message = "EMAIL INVÁLIDO"
  )
  @Column(nullable = false, unique = true)
  private String email;

  @Column(nullable = false, length = 19) //NOT NULL ou seja : O campo tem o preenchimento obrigatório & TAMANHO limitado a 19
  private String senha;

  @Column(nullable = false)
  @JsonFormat(pattern = "dd/MM/yyyy")
  private LocalDate dataNascimento;

  @Column(nullable = false)
  @Enumerated(EnumType.STRING) // especifica como o enum será armazenado.
  private StatusUsuario status;

  public UsuarioDTO converterParaDTO(){
    UsuarioDTO dto = new UsuarioDTO();

    dto.setId(id);
    dto.setNome(nome);
    dto.setEmail(email);
    dto.setCpf(cpf);
    dto.setDataNascimento(dataNascimento);
    dto.setStatus(status);
    
    LocalDate dataAtual = LocalDate.now();

    Period periodo = Period.between(dataNascimento, dataAtual);

    dto.setIdade(periodo.getYears());

    return dto;
  }

}
