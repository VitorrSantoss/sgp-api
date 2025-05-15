package com.sgp.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sgp.api.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long>{
  
}
