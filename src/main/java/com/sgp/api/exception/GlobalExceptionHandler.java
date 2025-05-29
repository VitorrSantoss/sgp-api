package com.sgp.api.exception;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.sgp.api.dto.ExecaoDTO;

@RestControllerAdvice
public class GlobalExceptionHandler {
  
  // serve para tratar todas as exceções que a aplicação lançar

  @ExceptionHandler(MethodArgumentNotValidException.class) // tratanto exatamente esse exceção
  public ResponseEntity<ExecaoDTO> tratarExecaoValidacao(MethodArgumentNotValidException ex){
    List<FieldError>camposErros = ex.getFieldErrors();

    List<String> erros = new ArrayList<>();

    for (FieldError campoErro : camposErros){
      String erro = campoErro.getDefaultMessage();

      erros.add(erro);
    }

    ExecaoDTO dto = new ExecaoDTO(LocalDate.now(), erros);
    
    return ResponseEntity.badRequest().body(dto);

  }
  
  // tratando exceções genéricas
  @ExceptionHandler(Exception.class)
  public ResponseEntity<ExecaoDTO> tratarExcecoesGenericas(Exception ex){
    List<String> erros = new ArrayList<>();

    erros.add("Erro Inesperado - Tente Novamente");
    erros.add(ex.toString());

    return ResponseEntity.internalServerError().body(new ExecaoDTO(LocalDate.now(), erros));

  }


}
