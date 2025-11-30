package com.sinai.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.sinai.model.entity.Contact;

public class ContactDAO implements IContactDAO {
  private DataSource db;

  public ContactDAO(DataSource db) {
    this.db = db;
  }

  @Override
  public void create(Contact contact) {
    String sqlQuery = "INSERT INTO contact (first_name, last_name, email, phone, message) VALUES (?, ?, ?, ?, ?)";

    try (
          Connection dbConnection = db.getConnection();
          PreparedStatement sql = dbConnection.prepareStatement(sqlQuery)
        ) {
          
          sql.setString(1, contact.getFirstName());
          sql.setString(2, contact.getLastName());
          sql.setString(3, contact.getEmail());
          sql.setString(4, contact.getPhone());
          sql.setString(5, contact.getMessage());

          sql.executeUpdate();
          
          
    } catch (SQLException e) {
      throw new RuntimeException("Erro ao salvar o contato" + e.getMessage());
    }
  }
  
}
