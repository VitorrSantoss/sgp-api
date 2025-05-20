package com.sgp.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sgp.api.model.Tarefa;

// CONSULTA AO BANCO DE DADOS (conexão com o banco de dados)

@Repository
public interface TarefaRepository extends JpaRepository<Tarefa, Long> {
  
}
