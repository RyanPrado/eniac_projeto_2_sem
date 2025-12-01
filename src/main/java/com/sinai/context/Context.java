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
    try {
      System.out.println("Initializing context...");
      EnvLoad.init();
      System.out.println("EnvLoad.init() completed");
      DatabaseConnection db = new DatabaseConnection();
      System.out.println("DatabaseConnection created");

      ServletContext context = contextConfig.getServletContext();
      DataSource connectionDataSource = db.getConnectionDataSource();
      System.out.println("DataSource obtained");

      new MigrationsConfig(connectionDataSource);
      System.out.println("MigrationsConfig completed");

      context.setAttribute("DB_CONNECTION", connectionDataSource);
      System.out.println("DB_CONNECTION set in context");

    } catch (Exception e) {
      e.printStackTrace();

      System.err.println("Erro ao criar o contexto: " + e.getMessage());
    }
  }
}
