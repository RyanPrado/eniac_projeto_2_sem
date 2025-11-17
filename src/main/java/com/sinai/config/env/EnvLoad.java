package com.sinai.config.env;

import io.github.cdimascio.dotenv.DotEnvException;
import io.github.cdimascio.dotenv.Dotenv;

public class EnvLoad {
  private Dotenv env;
 
  public EnvLoad() {
    this.env = Dotenv.configure().systemProperties().load();
  }

  public Dotenv getEnvs() throws DotEnvException {
    if(this.env == null) {
      throw new DotEnvException("Erro ao carregar as variáveis de ambiente");
    }

    return this.env;
  }
}