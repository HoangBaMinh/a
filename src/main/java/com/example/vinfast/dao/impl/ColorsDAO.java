package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.IColorsDAO;
import com.example.vinfast.mapper.impl.CategoryMapper;
import com.example.vinfast.mapper.impl.ColorsMapper;
import com.example.vinfast.model.Categories;
import com.example.vinfast.model.Colors;

import java.util.List;

public class ColorsDAO extends AbstractDAO<ColorsMapper> implements IColorsDAO {
    @Override
    public List<Colors> findAllColors() {
        String query = "SELECT ColorId, ColorName, HexCode, RGBCode, Status FROM categories";
        return query(query, new ColorsMapper());
    }

    @Override
    public void createColors(Colors colors) {
        String query =
                """
                INSERT INTO colors (ColorName, HexCode, RGBCode, Status)
                VALUES(?, ?, ?, ?)
                """;
        insert(
                query,
                colors.getColorName(),
                colors.getHexCode(),
                colors.getRgbCode(),
                colors.getStatus()
        );
    }

    @Override
    public void updateColors(Colors colors) {
        String query =
                """
                        UPDATE colors SET ColorName = ?, HexCode = ?, RGBCode = ?, Status = ?
                        WHERE ColorId = ?;
                        """;
        update(query, colors.getColorName(), colors.getHexCode(), colors.getRgbCode(), colors.getStatus(),colors.getColorId());
    }

    @Override
    public void deleteColors(int id) {
        String query = "DELETE FROM colors WHERE ColorId =?;";
        delete(query, id);
    }

    @Override
    public Colors findColorsById(int id) {
        String query =
                """
                        SELECT ColorId, ColorName, HexCode, RGBCode, Status FROM categories
                        WHERE ColorId =?;
                        """;
        List<Colors> list = query(query, new ColorsMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}
