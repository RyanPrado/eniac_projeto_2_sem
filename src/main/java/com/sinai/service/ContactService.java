package com.sinai.service;

import com.sinai.model.Contact;
import com.sinai.model.ContactDAO;
import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * Service for handling contact form submissions.
 */
public class ContactService {
    private final ContactDAO contactDAO;

    public ContactService(DataSource dataSource) {
        this.contactDAO = new ContactDAO(dataSource);
    }

    public void submitContact(String firstName, String lastName, String email, String phone, String message)
            throws IllegalArgumentException, SQLException {
        Contact contact = new Contact(firstName, lastName, email, phone, message);
        contactDAO.save(contact);
    }
}