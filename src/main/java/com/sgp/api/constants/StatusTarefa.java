package com.sgp.api.constants;

import com.fasterxml.jackson.annotation.JsonProperty;

public enum StatusTarefa {
  
  PENDENTE,
  FAZENDO,
  @JsonProperty("FINALIZADA")
  CONCLUIDA
}
