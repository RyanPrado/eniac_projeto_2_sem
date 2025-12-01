package com.sinai.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.sql.DataSource;

/**
 * Data Access Object for Contact entity.
 */
public class ContactDAO {
    private final DataSource dataSource;

    public ContactDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void save(Contact contact) throws SQLException {
        String sql = "INSERT INTO contact (first_name, last_name, email, phone, message) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = dataSource.getConnection();
                PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, contact.getFirstName());
            stmt.setString(2, contact.getLastName());
            stmt.setString(3, contact.getEmail());
            stmt.setString(4, contact.getPhone());
            stmt.setString(5, contact.getMessage());
            stmt.executeUpdate();
        }
    }
}