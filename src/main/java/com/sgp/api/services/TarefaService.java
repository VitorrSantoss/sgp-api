package com.sgp.api.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgp.api.model.Tarefa;
import com.sgp.api.repository.TarefaRepository;

//REGRA DE NEGÓCIO DO PROJETO
//To Do: Lógica adicional (ex: calcular e retornar idade)

@Service
public class TarefaService {

  @Autowired
  private TarefaRepository tarefaRepository;

  public List<Tarefa> carregarTarefaCadastrada(){
    return tarefaRepository.findAll(); // Select * From tb_tarefa
  }

  public Optional<Tarefa> carregarTarefaCadastradaPeloId(Long id){
    return tarefaRepository.findById(id);
  }

  public void excluirTarefaPeloId(Long id){
    tarefaRepository.deleteById(id);
  }

}