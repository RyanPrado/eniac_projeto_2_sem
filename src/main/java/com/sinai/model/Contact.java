package com.sinai.model;

import java.util.Objects;

/**
 * Represents a contact form submission entity.
 */
public class Contact {
    private final String firstName;
    private final String lastName;
    private final String email;
    private final String phone;
    private final String message;

    public Contact(String firstName, String lastName, String email, String phone, String message) {
        this.firstName = Objects.requireNonNull(firstName, "firstName is required");
        this.lastName = Objects.requireNonNull(lastName, "lastName is required");
        this.email = Objects.requireNonNull(email, "email is required");
        this.phone = Objects.requireNonNull(phone, "phone is required");
        this.message = Objects.requireNonNull(message, "message is required");

        if (firstName.trim().isEmpty()) {
            throw new IllegalArgumentException("firstName cannot be empty");
        }
        if (lastName.trim().isEmpty()) {
            throw new IllegalArgumentException("lastName cannot be empty");
        }
        if (!email.contains("@")) {
            throw new IllegalArgumentException("email must be valid");
        }
        if (phone.length() != 13) {
            throw new IllegalArgumentException("phone must be 13 characters");
        }
        if (message.trim().isEmpty()) {
            throw new IllegalArgumentException("message cannot be empty");
        }
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getMessage() {
        return message;
    }
}