package com.sinai.exception;

public class ContactException extends Exception {

  public ContactException(String message){
    super(message);
  }

  public ContactException(String message, Throwable cause) {
    super(message, cause);
  }
}
