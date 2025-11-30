package com.sinai.libs.db;
import java.sql.SQLException;

import javax.sql.DataSource;
import com.zaxxer.hikari.HikariDataSource;

public class DatabaseConnection {
  private static DataSource connectionDataSource;
  private static final String DB_URL = System.getProperty("DB_URL");
  private static final String DB_USER = System.getProperty("DB_USER");
  private static final String DB_PASSWORD = System.getProperty("DB_PASSWORD");

  public static void initPool() {
    if(DB_URL == null || DB_URL.isEmpty()) {
      throw new IllegalArgumentException("Erro ao acessar a variável de ambiente DB_URL");
    }

    if(DB_USER == null || DB_USER.isEmpty()) {
      throw new IllegalArgumentException("Erro ao acessar a variável de ambiente DB_USER");
    }

    if(DB_PASSWORD == null || DB_PASSWORD.isEmpty()) {
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

  public static DataSource getConnectionDataSource() throws SQLException {
    if(connectionDataSource == null) {
      throw new SQLException("Erro ao criar a conexão com o banco de dados");
    }

    return connectionDataSource;
  }

}
