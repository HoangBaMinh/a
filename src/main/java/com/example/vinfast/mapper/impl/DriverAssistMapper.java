package com.example.vinfast.mapper.impl;



import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.example.vinfast.mapper.IRowMappers;
import com.example.vinfast.model.DriverAssist;

public class DriverAssistMapper implements IRowMappers<DriverAssist> {
    private static Class<?> clazz = DriverAssist.class;

    @Override
    public DriverAssist rowMapper(ResultSet rs) {
        DriverAssist da = new DriverAssist();
        try {
            ResultSetMetaData rsmd = rs.getMetaData();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                String name = rsmd.getColumnName(i);
                name = name.substring(0, 1).toLowerCase() + name.substring(1);
                setProperty(da, name, rs.getObject(name));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return da;
    }

    @Override
    public void setProperty(DriverAssist da, String fieldName, Object o) {
        try {
            Field field = clazz.getDeclaredField(fieldName);
            field.setAccessible(true);
            field.set(da, o);
        } catch (NoSuchFieldException | IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }


}