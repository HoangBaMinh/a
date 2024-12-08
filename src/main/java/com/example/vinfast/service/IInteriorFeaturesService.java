package com.example.vinfast.service;

import java.util.List;

import com.example.vinfast.model.InteriorFeatures;

public interface IInteriorFeaturesService {

    List<InteriorFeatures> findAll() ;

    InteriorFeatures findOne(int id);

    void createExteriorFeatures(InteriorFeatures da);

    void updateInteriorFeatures(InteriorFeatures da);

    void deleteInteriorFeatures(int id);
}