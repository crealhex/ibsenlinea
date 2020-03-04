package com.ibs.enlinea.helpers;

public class Butler {

    public static String encrypt(String value) {
        return BCrypt.hashpw(value, BCrypt.gensalt());
    }

    public static boolean verify(String value, String hash) {
        return BCrypt.checkpw(value, hash);
    }

}
