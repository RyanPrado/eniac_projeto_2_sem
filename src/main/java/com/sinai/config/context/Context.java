package com.sinai.config.context;

import com.sinai.config.db.DatabaseConnection;
import com.sinai.config.db.migration.MigrationsConfig;
import com.sinai.config.env.EnvLoad;
import javax.sql.DataSource;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class Context implements ServletContextListener {
  @Override
  public void contextInitialized(ServletContextEvent contextConfig) {
    new EnvLoad();
    DatabaseConnection db = new DatabaseConnection();

    try {
      ServletContext context = contextConfig.getServletContext();
      DataSource connectionDataSource = db.getConnectionDataSource();

      new MigrationsConfig(connectionDataSource);

      context.setAttribute("DB_CONNECTION", connectionDataSource);
      
    } catch (Exception e) {
      e.printStackTrace();

      System.out.println("Erro ao criar o contexto: " + e.getMessage());
    }
  }
}
