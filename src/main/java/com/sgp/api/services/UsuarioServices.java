package com.sgp.api.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgp.api.model.Usuario;
import com.sgp.api.repository.UsuarioRepository;

// REGRA DE NEGÓCIO DO PROJETO

@Service
public class UsuarioServices {
  
  public List<Usuario> carregarUsuarioCadastrado(){
    // To Do: Lógica adicional (ex: calcular e retornar idade)
    return usuarioRepository.findAll(); // Select * From tb_usuarios
  }

  public Optional<Usuario> obterDadosUsuarioPeloId(Long id){
    return usuarioRepository.findById(id);
  }

  public void excluirUsuario(Long id){
    usuarioRepository.deleteById(id);
  }

  @Autowired
  private  UsuarioRepository usuarioRepository;
}
