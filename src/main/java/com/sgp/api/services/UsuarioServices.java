package com.sgp.api.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgp.api.model.Usuario;
import com.sgp.api.repository.UsuarioRepository;

//REGRA DE NEGÓCIO DO PROJETO
//To Do: Lógica adicional (ex: calcular e retornar idade)

@Service
public class UsuarioServices {
  
  @Autowired
  private UsuarioRepository usuarioRepository;

  public List<Usuario> carregarUsuarioCadastrado(){
    return usuarioRepository.findAll(); // Select * From tb_usuarios
  }

  public Optional<Usuario> obterDadosUsuarioPeloId(Long id){
    return usuarioRepository.findById(id);
  }

  public void excluirUsuario(Long id){
    usuarioRepository.deleteById(id);
  }

  public Usuario salvarUsuario(Usuario usuario){
    return usuarioRepository.save(usuario);
  }

}