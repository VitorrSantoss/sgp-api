package com.sgp.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sgp.api.model.Projeto;

// CONSULTA AO BANCO DE DADOS (conexão com o banco de dados)

@Repository
public interface ProjetoRepository extends JpaRepository<Projeto, Long> {
  
}
