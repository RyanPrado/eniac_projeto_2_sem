package com.sinai.context;

import javax.sql.DataSource;

import com.sinai.libs.db.DatabaseConnection;
import com.sinai.libs.db.migration.MigrationsConfig;
import com.sinai.libs.env.EnvLoad;

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
