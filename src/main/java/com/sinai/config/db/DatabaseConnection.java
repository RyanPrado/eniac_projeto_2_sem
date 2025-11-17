package com.sinai.config.db;
import java.sql.SQLException;

import javax.sql.DataSource;
import com.zaxxer.hikari.HikariDataSource;

public class DatabaseConnection {
  private DataSource connectionDataSource;

  public DatabaseConnection(){
    HikariDataSource ds = new HikariDataSource();

    ds.setJdbcUrl(System.getProperty("DB_URL"));
    ds.setUsername(System.getProperty("DB_USER"));
    ds.setPassword(System.getProperty("DB_PASSWORD"));

    this.connectionDataSource = ds;
  }

  public DataSource getConnectionDataSource() throws SQLException {
    if(connectionDataSource == null) {
      throw new SQLException("Erro ao criar a conexão com o banco de dados");
    }

    return this.connectionDataSource;
  }

}
