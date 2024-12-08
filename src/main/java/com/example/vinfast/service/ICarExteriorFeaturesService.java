package com.example.vinfast.service;

import java.util.List;

import com.example.vinfast.model.CarExteriorFeatures;

public interface ICarExteriorFeaturesService {

    List<CarExteriorFeatures> findAll() ;

    CarExteriorFeatures findOne(int id);

    void createExteriorFeatures(CarExteriorFeatures ef);

    void updateCarExteriorFeatures(CarExteriorFeatures ef);

    void deleteCarExteriorFeatures(int id);

}