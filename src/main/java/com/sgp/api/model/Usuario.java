package com.sgp.api.model;

import java.time.LocalDate;

import com.sgp.api.constants.StatusUsuario;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // Facilitador dos GETTER'S AND SETTER'S
@AllArgsConstructor // Facilitador do CONSTRUTOR com ARGUMENTOS
@NoArgsConstructor  // Facilitador do CONSTRUTOR VAZIO
@Entity(name = "tb_usuario") // Nomeção da classe como entidade e nomeando a tabela para o banco de dados

public class Usuario {
  
  @Id // Atribuindo o id como chave primaria e como auto_increment
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false) // NOT NULL ou seja : O campo tem o preenchimento obrigatório
  private String nome;

  @Column(nullable = false, unique = true) // NOT NULL ou seja : O campo tem o preenchimento obrigatório & UNICO
  private String cpf;

  @Column(nullable = false, unique = true)
  private String email;

  @Column(nullable = false, length = 19) //NOT NULL ou seja : O campo tem o preenchimento obrigatório & TAMANHO limitado a 19
  private String senha;

  @Column(nullable = false)
  private LocalDate dataNascimento;

  @Column(nullable = false)
  @Enumerated(EnumType.STRING) // especifica como o enum será armazenado.
  private StatusUsuario status;
}
