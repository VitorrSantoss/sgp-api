package com.sgp.api.model;

import java.time.LocalDate;

import com.sgp.api.constants.StatusProjeto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "tb_projeto")

public class Projeto {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false)
  private String nome;

  @Column(columnDefinition = "TEXT") // Definindo a coluna para TEXT como é no SQL
  private String descricao;

  @Column(nullable = false)
  private LocalDate dataInicio;

  private LocalDate dataConclusao;

  @Column(nullable = false)
  @Enumerated(EnumType.STRING)
  private StatusProjeto status;

  @ManyToOne // Indica um relacionamento "Muitos-para-Um" entre entidades
  @JoinColumn(nullable = false) // Personaliza a coluna de junção (chave estrangeira)
  private Usuario responsavel;
}
