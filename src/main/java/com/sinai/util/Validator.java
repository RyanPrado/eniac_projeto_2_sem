package com.sinai.util;

public class Validator {
  public static boolean isBlankOrNull(String value){
    return value.isBlank() || value == null;
  }
}
