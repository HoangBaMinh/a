package com.example.vinfast.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.IOException;

public class HttpUtil{
    private String value;
    public HttpUtil(String value){
        this.value = value;
    }

    public static HttpUtil of(BufferedReader brd){
        String tmp;
        StringBuilder json = new StringBuilder();
        try {
            while ((tmp = brd.readLine()) != null){
                json.append(tmp);
            }
        }catch (IOException e) {
            e.printStackTrace();
        }
        return new HttpUtil(json.toString());
    }

    public <T> T toModel(Class<T> classT){
        try {
            return new ObjectMapper().readValue(value, classT);
        }catch (JsonProcessingException e){
            System.out.println(e.getMessage());
        }
        return null;
    }
}
