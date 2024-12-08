package com.example.vinfast.dao;

import java.util.List;

import com.example.vinfast.model.InteriorFeatures;

public interface IInteriorFeaturesDAO {
    List<InteriorFeatures> findAll();
    InteriorFeatures findById(int id);
    void insertIF(InteriorFeatures inf);
    void updateIF(InteriorFeatures inf);
    void deleteIF(int id);
}