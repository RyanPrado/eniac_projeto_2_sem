package com.sinai.libs.db;

import javax.sql.DataSource;

import com.sinai.util.Validator;
import com.zaxxer.hikari.HikariDataSource;

public class DatabaseConnection {
  private static DataSource connectionDataSource;
  private static final String DB_URL = System.getProperty("DB_URL");
  private static final String DB_USER = System.getProperty("DB_USER");
  private static final String DB_PASSWORD = System.getProperty("DB_PASSWORD");

  public static void initPool() {
    if(Validator.isBlankOrNull(DB_URL)) {
      throw new IllegalArgumentException("Erro ao acessar a variável de ambiente DB_URL");
    }

    if(Validator.isBlankOrNull(DB_USER)) {
      throw new IllegalArgumentException("Erro ao acessar a variável de ambiente DB_USER");
    }

    if(Validator.isBlankOrNull(DB_PASSWORD)) {
      throw new IllegalArgumentException("Erro ao acessar a variável de ambiente DB_PASSWORD");
    }

    HikariDataSource dataSourceConfig = new HikariDataSource();

    dataSourceConfig.setDriverClassName("com.mysql.cj.jdbc.Driver");
    dataSourceConfig.setJdbcUrl(DB_URL);
    dataSourceConfig.setUsername(DB_USER);
    dataSourceConfig.setPassword(DB_PASSWORD);

    dataSourceConfig.setMaxLifetime(900000); // 15 minutos
    dataSourceConfig.setConnectionTimeout(9000); // 90 segundos
    dataSourceConfig.setMaximumPoolSize(5);
    dataSourceConfig.setIdleTimeout(30000); // 5 minutos

    connectionDataSource = dataSourceConfig;
  }

  public static DataSource getConnectionDataSource() {
    return connectionDataSource;
  }

}
