package com.sgp.api.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgp.api.dto.UsuarioDTO;
import com.sgp.api.model.Usuario;
import com.sgp.api.repository.UsuarioRepository;

//REGRA DE NEGÓCIO DO PROJETO
//To Do: Lógica adicional (ex: calcular e retornar idade)

@Service
public class UsuarioServices {
  
  @Autowired
  private UsuarioRepository usuarioRepository;

  public List<UsuarioDTO> carregarUsuarioCadastrado(){
    List<Usuario> usuarios = usuarioRepository.findAll(); // Select * From tb_usuarios

    List<UsuarioDTO> dtos = new ArrayList<>();

    for(Usuario usuario : usuarios){
      dtos.add(usuario.converterParaDTO());
    }

    return dtos;
  }

  public UsuarioDTO obterDadosUsuarioPeloId(Long id){
    Optional<Usuario> usuarioOpt = usuarioRepository.findById(id);

    if(usuarioOpt.isPresent()){
      Usuario usuario = usuarioOpt.get();

      return usuario.converterParaDTO();
    }
    return null;
  }

  public void excluirUsuario(Long id){
    usuarioRepository.deleteById(id);
  }

  public Usuario salvarUsuario(Usuario usuario){
    return usuarioRepository.save(usuario);
  }

}