package com.example.vinfast.dao.impl;

import java.util.List;

import com.example.vinfast.dao.ICarExteriorFeaturesDAO;
import com.example.vinfast.mapper.impl.CarExteriorFeaturesMapper;
import com.example.vinfast.model.CarExteriorFeatures;

public class CarExteriorFeaturesDAO extends AbstractDAO<CarExteriorFeatures> implements ICarExteriorFeaturesDAO{

    @Override
    public List<CarExteriorFeatures> findAll() {
        String query = """
					SELECT Id, CarId, HeadlightType, HeadlightFeatures, DaytimeRunningLight, MirrorType, MirrorFeatures,
					WiperFunction, Sunroof FROM carexteriorfeatures;
				""";
        return query(query, new CarExteriorFeaturesMapper());
    }

    @Override
    public CarExteriorFeatures findById(int id) {
        String query = """
				SELECT Id, CarId, HeadlightType, HeadlightFeatures, DaytimeRunningLight, MirrorType, MirrorFeatures,
				WiperFunction, Sunroof FROM carexteriorfeatures WHERE Id=?;
			""";
        List<CarExteriorFeatures> list = query(query, new CarExteriorFeaturesMapper(), id);
        return list.isEmpty() ? null:list.get(0);
    }

    @Override
    public void insertEF(CarExteriorFeatures ef) {
        String query = """
				INSERT INTO carexteriorfeatures(CarId, HeadlightType, HeadlightFeatures, DaytimeRunningLight, MirrorType,
				MirrorFeatures, WiperFunction, Sunroof) VALUES (?,?,?,?,?,?,?,?);
			""";
        insert(query, ef.getCarId(), ef.getHeadlightType(), ef.getHeadlightFeatures(), ef.getDaytimeRunningLight(), ef.getMirrorType(),
                ef.getMirrorFeatures(), ef.getWiperFunction(), ef.getSunroof());
    }

    @Override
    public void updateEF(CarExteriorFeatures ef) {
        String query = """
				 UPDATE carexteriorfeatures SET CarId=?, HeadlightType=?, HeadlightFeatures=?, DaytimeRunningLight=?,
				 MirrorType=?, MirrorFeatures=?, WiperFunction=?, Sunroof=? WHERE Id=?;
			""";
        update(query, ef.getCarId(), ef.getHeadlightType(), ef.getHeadlightFeatures(), ef.getDaytimeRunningLight(), ef.getMirrorType(),
                ef.getMirrorFeatures(), ef.getWiperFunction(), ef.getSunroof(), ef.getId());
    }

    @Override
    public void deleteEF(int id) {
        String query = """
				DELETE FROM carexteriorfeatures where Id=?;
			""";
        delete(query, id);
    }
}