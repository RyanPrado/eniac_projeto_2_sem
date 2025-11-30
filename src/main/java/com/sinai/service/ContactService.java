package com.sinai.service;

import javax.sql.DataSource;

import com.sinai.exception.ContactException;
import com.sinai.model.dao.ContactDAO;
import com.sinai.model.entity.Contact;

public class ContactService {
  private ContactDAO Contactrepository;

  public ContactService(DataSource db) {
    this.Contactrepository = new ContactDAO(db);
  }

  public void createContact(Contact contact) {
  }
}
