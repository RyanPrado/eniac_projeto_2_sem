package com.sinai.config.context;

import com.sinai.config.env.EnvLoad;

import javax.naming.InitialContext;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class Context implements ServletContextListener {
  
  @Override
  public void contextInitialized(ServletContextEvent contextEvent) {
    new EnvLoad();
    
    
    try {
      InitialContext contextInit = new InitialContext();

    } catch (Exception e) {
      e.getStackTrace();
      
      System.out.println("Erro ao iniciar o contexto");
    }
  }

  static {
    System.out.println("Entrou no estático");
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (Exception e) {
      e.getStackTrace();

      System.out.println("Driver do JDBC não encontrado!");
    }
  }
}
