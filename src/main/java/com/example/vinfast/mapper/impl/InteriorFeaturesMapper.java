package com.example.vinfast.mapper.impl;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.InteriorFeatures;

public class InteriorFeaturesMapper implements IRowMappers<InteriorFeatures>{

    private static Class<?> clazz = InteriorFeatures.class;

    @Override
    public InteriorFeatures rowMapper(ResultSet rs) {
        InteriorFeatures inf = new InteriorFeatures();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name = name.substring(0, 1).toLowerCase() + name.substring(1);
                setProperty(inf, name, rs.getObject(name));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return inf;
    }

    @Override
    public void setProperty(InteriorFeatures inf, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(inf, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}