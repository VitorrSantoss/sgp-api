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

import com.sgp.api.model.Usuario;
import com.sgp.api.services.UsuarioServices;

@RestController
@RequestMapping("/usuarios")
public class UsuarioController {

  // 1º EndPoint
  @GetMapping
  public ResponseEntity<List<Usuario>> listarUsuarios(){
    return ResponseEntity.ok().body(usuarioServices.carregarUsuarioCadastrado());
  }

  // 2º EndPoint
  @GetMapping("{id}")
  public ResponseEntity<Optional<Usuario>> buscarUsuarioPeloId(@PathVariable("id")Long id){
    Optional<Usuario> usuario = usuarioServices.obterDadosUsuarioPeloId(id);
    
    if(usuario.isEmpty()){
      return ResponseEntity.notFound().build();
    }
    return ResponseEntity.ok().body(usuario);
  }

  // 3º EndPoint
  @DeleteMapping("/{id}")
  public ResponseEntity<Void> deletarUsuario(@PathVariable("id")Long id){
    usuarioServices.excluirUsuario(id);
    return ResponseEntity.noContent().build();
  }

  
  @Autowired
  private UsuarioServices usuarioServices;

}
