package com.sinai.service;

import javax.sql.DataSource;

import com.sinai.exception.ContactException;
import com.sinai.model.dao.ContactDAO;
import com.sinai.model.entity.Contact;
import com.sinai.util.Format;
import com.sinai.util.Validator;

public class ContactService {
  private ContactDAO Contactrepository;

  public ContactService(DataSource db) {
    this.Contactrepository = new ContactDAO(db);
  }

  public void createContact(Contact contact) throws ContactException {
    String phoneFormated = Format.PhoneFormat(contact.getPhone());

    if(Validator.isBlankOrNull(phoneFormated) || phoneFormated.length() > 13) throw new ContactException("O número de telefone está em um formato incorreto!");

    if(Validator.isBlankOrNull(contact.getEmail()) || !contact.getEmail().contains("@")) throw new ContactException("Email invlálido ou vazio!");

    if(Validator.isBlankOrNull(contact.getFirstName())) throw new ContactException("Nome inválido ou vazio!");

    if(Validator.isBlankOrNull(contact.getMessage())) throw new ContactException("Menságem inválida ou vazia!");

    contact.setPhone(phoneFormated);
    Contactrepository.create(contact);
  }
}
