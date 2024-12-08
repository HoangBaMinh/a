package com.example.vinfast.util;

import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;

public class Argon2Util {
    public static final Argon2PasswordEncoder argon2 = new Argon2PasswordEncoder(16, 32, 1, 60000, 12);

    public static String encyptPass(String password) {
        String springBouncyHash = argon2.encode(password);
        return springBouncyHash;
    }

    public static boolean checkPass(String password, String passwordEnc){
            return argon2.matches(password, passwordEnc);
    }
}
