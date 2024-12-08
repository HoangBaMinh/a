package com.example.vinfast.service;

import java.util.List;

import com.example.vinfast.model.DriverAssist;

public interface IDriverAssistService {

    List<DriverAssist> findAll() ;

    DriverAssist findOne(int id);

    void createExteriorFeatures(DriverAssist da);

    void updateDriverAssist(DriverAssist da);

    void deleteDriverAssist(int id);
}