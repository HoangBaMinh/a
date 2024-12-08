package com.example.vinfast.dao.impl;

import java.util.List;

import com.example.vinfast.dao.IInteriorFeaturesDAO;
import com.example.vinfast.mapper.impl.InteriorFeaturesMapper;
import com.example.vinfast.model.InteriorFeatures;

public class InteriorFeaturesDAO extends AbstractDAO<InteriorFeatures> implements IInteriorFeaturesDAO {

    @Override
    public List<InteriorFeatures> findAll() {
        String query = """
					SELECT Id, CarId, SeatCount, TouchscreenSize, HUDDisplay, DriverSeatConfig, PassengerSeatConfig, SteeringWheelAdjustment,
					SteeringWheelType, AirConditioningSystem, USBPorts, BluetoothWifiConnectivity, SoundSystem, VinFastConnectService
					FROM interiorfeatures;
				""";
        return query(query, new InteriorFeaturesMapper());
    }

    @Override
    public InteriorFeatures findById(int id) {
        String query = """
				SELECT Id, CarId, SeatCount, TouchscreenSize, HUDDisplay, DriverSeatConfig, PassengerSeatConfig, SteeringWheelAdjustment,
				SteeringWheelType, AirConditioningSystem, USBPorts, BluetoothWifiConnectivity, SoundSystem, VinFastConnectService
				FROM interiorfeatures WHERE Id=?;
			""";
        List<InteriorFeatures> list = query(query, new InteriorFeaturesMapper(), id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public void insertIF(InteriorFeatures inf) {
        String query = """
					INSERT INTO interiorfeatures(CarId, SeatCount, TouchscreenSize, HUDDisplay, DriverSeatConfig, PassengerSeatConfig, SteeringWheelAdjustment,
					SteeringWheelType, AirConditioningSystem, USBPorts, BluetoothWifiConnectivity, SoundSystem, VinFastConnectService)
					VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?);
				""";
        insert(query, inf.getCarId(), inf.getSeatCount(), inf.getTouchscreenSize(), inf.isHudDisplay(), inf.getDriverSeatConfig(),
                inf.getPassengerSeatConfig(), inf.getSteeringWheelAdjustment() ,inf.getSteeringWheelType(), inf.getAirConditioningSystem(),
                inf.getUsbPorts(), inf.isBluetoothWifiConnectivity(), inf.getSoundSystem(), inf.isVinFastConnectService());
    }

    @Override
    public void updateIF(InteriorFeatures inf) {
        String query = """
					UPDATE interiorfeatures SET CarId=?, SeatCount=?, TouchscreenSize=?, HUDDisplay=?, DriverSeatConfig=?,
					PassengerSeatConfig=?, SteeringWheelAdjustment=?, SteeringWheelType=?, AirConditioningSystem=?,
					USBPorts=?, BluetoothWifiConnectivity=?, SoundSystem=?, VinFastConnectService=?
					WHERE Id=?;
				""";
        update(query, inf.getCarId(), inf.getSeatCount(), inf.getTouchscreenSize(), inf.isHudDisplay(), inf.getDriverSeatConfig(),
                inf.getPassengerSeatConfig(), inf.getSteeringWheelAdjustment() ,inf.getSteeringWheelType(), inf.getAirConditioningSystem(),
                inf.getUsbPorts(), inf.isBluetoothWifiConnectivity(), inf.getSoundSystem(), inf.isVinFastConnectService(), inf.getId());
    }

    @Override
    public void deleteIF(int id) {
        String query = """
					DELETE FROM interiorfeatures WHERE Id=?
				""";
        delete(query, id);
    }
}