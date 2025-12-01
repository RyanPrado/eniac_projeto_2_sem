package com.sinai.libs.env;

import io.github.cdimascio.dotenv.DotEnvException;
import io.github.cdimascio.dotenv.Dotenv;

public class EnvLoad {

  public static void init() throws DotEnvException {
    try {
      System.out.println("Loading .env...");
      Dotenv dotenv = Dotenv.configure().systemProperties().load();
      System.out.println("DB_URL: " + System.getProperty("DB_URL"));
      System.out.println("DB_USER: " + System.getProperty("DB_USER"));
      System.out.println("DB_PASSWORD: " + System.getProperty("DB_PASSWORD"));
    } catch (Exception e) {
      e.printStackTrace();
      throw new DotEnvException("Erro ao carregar as variáveis de ambiente.");
    }
  }
}