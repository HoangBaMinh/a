package com.example.vinfast.service.impl;

import java.util.List;

import com.example.vinfast.dao.ICarExteriorFeaturesDAO;
import com.example.vinfast.dao.impl.CarExteriorFeaturesDAO;
import com.example.vinfast.model.CarExteriorFeatures;
import com.example.vinfast.service.ICarExteriorFeaturesService;

public class CarExteriorFeaturesService implements ICarExteriorFeaturesService {

    private ICarExteriorFeaturesDAO dao = new CarExteriorFeaturesDAO();

    @Override
    public List<CarExteriorFeatures> findAll() {
        return dao.findAll();
    }

    @Override
    public CarExteriorFeatures findOne(int id) {
        return dao.findById(id);
    }

    @Override
    public void createExteriorFeatures(CarExteriorFeatures ef) {
        dao.insertEF(ef);
    }

    @Override
    public void updateCarExteriorFeatures(CarExteriorFeatures ef) {
        dao.updateEF(ef);
    }

    @Override
    public void deleteCarExteriorFeatures(int id) {
        dao.deleteEF(id);
    }

}