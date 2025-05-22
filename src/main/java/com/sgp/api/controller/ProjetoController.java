package com.sgp.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sgp.api.model.Projeto;
import com.sgp.api.services.ProjetoService;

@RestController
@RequestMapping("/projetos")
public class ProjetoController {

  @Autowired 
  private ProjetoService projetoService;

  // 1º EndPoint
  @GetMapping
  public ResponseEntity<List<Projeto>> listarProjetos(){
    return ResponseEntity.ok().body(projetoService.carregarProjetoCadastrado());
  }

  // 2º EndPoint
  @GetMapping("/{id}")
  public ResponseEntity<Optional<Projeto>> listarProjetoPeloId(@PathVariable("id")Long id){
    Optional<Projeto> projeto = projetoService.obterProjetoPeloId(id);

    if (projeto.isEmpty()){
      return ResponseEntity.notFound().build();
    }
    return ResponseEntity.ok().body(projeto);
  }

  // 3º EndPoint
  @DeleteMapping("/{id}")
  public ResponseEntity <Void> deletarProjetoPeloId(@PathVariable("id")Long id){
    Optional <Projeto> projeto = projetoService.obterProjetoPeloId(id);

    if (projeto.isEmpty()){
      return ResponseEntity.notFound().build();
    }
    projetoService.excluirProjetoPeloId(id);

    return ResponseEntity.noContent().build();
  }   

  // 4º EndPoint
  @PostMapping
  public ResponseEntity<Projeto> cadastrarProjeto(@RequestBody Projeto projeto){
    return ResponseEntity.status(HttpStatus.CREATED).body(projetoService.salvarProjeto(projeto));
  }

  @PutMapping("{id}")
  public ResponseEntity<Projeto> atualizarProjeto(@PathVariable Long id, @RequestBody Projeto dadosProjeto){
    Optional<Projeto> projeto = projetoService.obterProjetoPeloId(id);

    if(projeto.isEmpty()){
      return ResponseEntity.noContent().build();
    }

    dadosProjeto.setId(id);

    return ResponseEntity.ok().body(projetoService.salvarProjeto(dadosProjeto));

  }

}