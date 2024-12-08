package com.example.vinfast.dao;


import com.example.vinfast.model.Colors;

import java.util.List;

public interface IColorsDAO {
    List<Colors> findAllColors();

    void createColors(Colors colors);

    void updateColors(Colors colors);

    void deleteColors(int id);

    Colors findColorsById(int id);
}
