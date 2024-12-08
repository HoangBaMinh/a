package com.example.vinfast.util;

import jakarta.servlet.http.HttpServletRequest;
import org.apache.commons.beanutils.BeanUtils;

import java.lang.reflect.InvocationTargetException;

public class FormUtil{
    public static <T> T toModel(Class<T> tclass, HttpServletRequest req){
        T object = null;
        try {
            object = tclass.getDeclaredConstructor().newInstance();
            BeanUtils.populate(object, req.getParameterMap());
        } catch (InvocationTargetException | InstantiationException | IllegalAccessException | NoSuchMethodException e) {
            System.out.println(e.getMessage());
        }
        return object;
    }
}
