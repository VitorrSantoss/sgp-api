package com.sgp.api.model;

import java.time.LocalDate;

import com.sgp.api.constants.Prioridade;
import com.sgp.api.constants.StatusTarefa;

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
@Entity(name = "tb_tarefa")

public class Tarefa {
  
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(nullable = false) // NOT NULL ou seja : O campo tem o preenchimento obrigatório à nível de BANCO DE DADOS
  private String titulo;

  @Column(columnDefinition = "TEXT")
  private String descricao;

  @Column(nullable = false)
  private LocalDate dataCriacao;

  private LocalDate dataConclusao;

  @Column(nullable = false)
  @Enumerated(EnumType.STRING)
  private Prioridade prioridade;

  @Column(nullable = false)
  @Enumerated(EnumType.STRING)
  private StatusTarefa status;

  @ManyToOne
  @JoinColumn(nullable = false)
  private Projeto projeto;

  @ManyToOne
  private Usuario usuario;
}
