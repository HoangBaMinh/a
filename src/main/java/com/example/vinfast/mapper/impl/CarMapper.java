package com.example.vinfast.mapper.impl;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.Car;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class CarMapper implements IRowMappers<Car> {
    private static Class<?> clazz = Car.class;
    
    @Override
    public Car rowMapper(ResultSet rs) {
        Car Car = new Car();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for(int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name.replace(name.substring(0, 1), name.substring(0, 1).toLowerCase());
                setProperty(Car, name, rs.getString(name));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return Car;
    }

    @Override
    public void setProperty(Car Car, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(Car, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}
