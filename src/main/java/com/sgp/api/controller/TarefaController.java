package com.sgp.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sgp.api.model.Tarefa;
import com.sgp.api.services.TarefaService;

@RestController
@RequestMapping("/tarefas")
public class TarefaController {
  
  @Autowired
  private TarefaService tarefaService;

  // 1º EndPoint
  @GetMapping
  public ResponseEntity<List<Tarefa>> listarTarefas(){
    return ResponseEntity.ok().body(tarefaService.carregarTarefaCadastrada());
  }

  // 2º EndPoint
  @GetMapping("/{id}")
  public ResponseEntity<Optional<Tarefa>> listarTarefasPeloId(@PathVariable("id")Long id){
    Optional<Tarefa> tarefa = tarefaService.carregarTarefaCadastradaPeloId(id);

    if (tarefa.isEmpty()) {
      return ResponseEntity.notFound().build();
    }
    return ResponseEntity.ok().body(tarefa);
  }

  // 3º EndPoint
  @DeleteMapping("/{id}")
  public ResponseEntity <Void> deletarTarefaPeloId(@PathVariable("id")Long id){
    Optional<Tarefa> tarefa = tarefaService.carregarTarefaCadastradaPeloId(id);

    if (tarefa.isEmpty()){
      return ResponseEntity.notFound().build();
    }
    tarefaService.excluirTarefaPeloId(id);

    return ResponseEntity.noContent().build();
  }
}