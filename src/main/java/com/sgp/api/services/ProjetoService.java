package com.sgp.api.services;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgp.api.constants.StatusProjeto;
import com.sgp.api.model.Projeto;
import com.sgp.api.repository.ProjetoRepository;

//REGRA DE NEGÓCIO DO PROJETO
//To Do: Lógica adicional (ex: calcular e retornar idade)

@Service
public class ProjetoService {
  
  @Autowired
  private ProjetoRepository projetoRepository;

  public List<Projeto> carregarProjetoCadastrado(){
    return projetoRepository.findAll(); // Select * From tb_projeto
  }

  public Optional<Projeto> obterProjetoPeloId(Long id){
    return projetoRepository.findById(id);
  }

  public void excluirProjetoPeloId(Long id){
    projetoRepository.deleteById(id);
  }

  public Projeto salvarProjeto(Projeto projeto){
    // O formulário não tem estes campos, e o banco exige os dois.
    if (projeto.getDataInicio() == null) {
      projeto.setDataInicio(LocalDate.now());
    }

    if (projeto.getStatus() == null) {
      projeto.setStatus(StatusProjeto.ATIVO);
    }

    return projetoRepository.save(projeto);
  }

}