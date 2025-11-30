package com.sinai.context;

import com.sinai.libs.db.DatabaseConnection;
import com.sinai.libs.db.migration.MigrationsConfig;
import com.sinai.libs.env.EnvLoad;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class Context implements ServletContextListener {
  
  @Override
  public void contextInitialized(ServletContextEvent contextConfig) {
    try {
      EnvLoad.init();
      DatabaseConnection.initPool();

      new MigrationsConfig(DatabaseConnection.getConnectionDataSource());
      
    } catch (Exception e) {
      e.printStackTrace();

      System.err.print("Erro ao criar o contexto: " + e.getMessage());
    }
  }
}
