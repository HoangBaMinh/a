package com.example.vinfast.mapper.impl;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.SafetySecurityFeatures;
import com.example.vinfast.model.Users;

import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class SafetySecurityFeaturesMapper implements IRowMappers<SafetySecurityFeatures> {
    private  static  Class<?> clazz = SafetySecurityFeatures.class;
    @Override
    public SafetySecurityFeatures rowMapper(ResultSet rs) {
        SafetySecurityFeatures safetySecurityFeatures = new SafetySecurityFeatures();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name = name.substring(0, 1).toLowerCase() + name.substring(1);
                setProperty(safetySecurityFeatures, name, rs.getObject(name));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return safetySecurityFeatures;
    }

    @Override
    public void setProperty(SafetySecurityFeatures safetySecurityFeatures, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(safetySecurityFeatures, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }
}
