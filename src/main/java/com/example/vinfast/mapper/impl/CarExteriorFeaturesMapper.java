package com.example.vinfast.mapper.impl;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.CarExteriorFeatures;

public class CarExteriorFeaturesMapper implements IRowMappers<CarExteriorFeatures> {
    private static Class<?> clazz = CarExteriorFeatures.class;
    @Override
    public CarExteriorFeatures rowMapper(ResultSet rs) {
        CarExteriorFeatures ef = new CarExteriorFeatures();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name = name.substring(0, 1).toLowerCase() + name.substring(1);
                setProperty(ef, name, rs.getObject(name));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return ef;
    }

    @Override
    public void setProperty(CarExteriorFeatures ef, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(ef, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

}