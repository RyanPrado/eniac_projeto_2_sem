package com.sinai.model.entity;

public class Contact {
  private String first_name;
  private String last_name;
  private String email;
  private String phone;
  private String message;

  public Contact() {
  }

  public Contact(String first_name, String email, String phone, String message) {
    this.first_name = first_name;
    this.email = email;
    this.phone = phone;
    this.message = message;
  }
  
  public Contact(String first_name, String last_name, String email, String phone, String message) {
    this.first_name = first_name;
    this.last_name = last_name;
    this.email = email;
    this.phone = phone;
    this.message = message;
  }

  public String getFirstName() {
    return first_name;
  }
  public void setFirstName(String first_name) {
    this.first_name = first_name;
  }
  public String getLastName() {
    return last_name;
  }
  public void setLastName(String last_name) {
    this.last_name = last_name;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPhone() {
    return phone;
  }
  public void setPhone(String phone) {
    this.phone = phone;
  }
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }
}
