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

import com.sgp.api.model.Usuario;
import com.sgp.api.services.UsuarioServices;

@RestController
@RequestMapping("/usuarios")
public class UsuarioController {
  
  @Autowired
  private UsuarioServices usuarioServices;

  // 1º EndPoint
  @GetMapping
  public ResponseEntity<List<Usuario>> listarUsuarios(){
    return ResponseEntity.ok().body(usuarioServices.carregarUsuarioCadastrado());
  }

  // 2º EndPoint
  @GetMapping("/{id}")
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
    Optional<Usuario> usuario = usuarioServices.obterDadosUsuarioPeloId(id);

    if(usuario.isEmpty()){
      return ResponseEntity.notFound().build();
    }
    usuarioServices.excluirUsuario(id);

    return ResponseEntity.noContent().build();
  }

  // 4º EndPoint
  @PostMapping
  public ResponseEntity<Usuario> cadastrarUsuario(@RequestBody Usuario usuario){
    return ResponseEntity.status(HttpStatus.CREATED).body(usuarioServices.salvarUsuario(usuario));
  }

  // 5º EndPoint
  @PutMapping("/{id}")
  public ResponseEntity<Usuario> atualizarUsuario(@PathVariable("id") Long id, @RequestBody Usuario dadosUsuario){
    Optional<Usuario> usuario = usuarioServices.obterDadosUsuarioPeloId(id);

    if(usuario.isEmpty()){
      return ResponseEntity.noContent().build();
    }

    dadosUsuario.setId(id);

    return ResponseEntity.ok().body(usuarioServices.salvarUsuario(dadosUsuario));
  }


}