package com.sinai.model;

import java.util.Objects;

/**
 * Represents a simple course entity used by the demo MVC application.
 */
public class Course {
    private final String code;
    private final String title;
    private final String description;

    public Course(String code, String title, String description) {
        this.code = Objects.requireNonNull(code, "code is required");
        this.title = Objects.requireNonNull(title, "title is required");
        this.description = Objects.requireNonNull(description, "description is required");
    }

    public String getCode() {
        return code;
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }
}
