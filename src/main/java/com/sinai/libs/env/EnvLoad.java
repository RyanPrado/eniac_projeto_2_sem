package com.sinai.libs.env;

import io.github.cdimascio.dotenv.DotEnvException;
import io.github.cdimascio.dotenv.Dotenv;

public class EnvLoad {
  
  public static void init() throws DotEnvException{
    try {
      Dotenv.configure().systemProperties().load();
    } catch (Exception e) {
      e.printStackTrace();
      throw new DotEnvException("Erro ao carregar as variáveis de ambiente.");
    }
  }
}