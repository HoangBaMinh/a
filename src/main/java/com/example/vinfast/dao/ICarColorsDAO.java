package com.example.vinfast.dao;


import com.example.vinfast.model.Carcolors;

import java.util.List;

public interface ICarColorsDAO {
    List<Carcolors> findAllCarcolors();

    void createCarcolors(Carcolors carcolors);

    void updateCarcolors(Carcolors carcolors);

    void deleteCarcolors(int id);

    Carcolors findCarcolorsById(int id);
}
