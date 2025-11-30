package com.sinai.util;

public class Format {
  public static String PhoneFormat(String phone) {
    if(phone == null || phone.isEmpty()) return "";

    return phone.replaceAll("(\"[^0-9]\", \"\")", phone);
  }
}
