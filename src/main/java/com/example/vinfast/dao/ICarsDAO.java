package com.example.vinfast.dao;

import com.example.vinfast.model.Car;

import java.util.List;

public interface ICarsDAO {
    List<Car> findAll();
    Car findById(int id);
}
