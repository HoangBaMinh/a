package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class InteriorFeatures {
    private int id;
    private int carId;
    private int seatCount;
    private double touchscreenSize;
    private boolean hudDisplay;
    private String driverSeatConfig;
    private String passengerSeatConfig;
    private String steeringWheelAdjustment;
    private String steeringWheelType;
    private String airConditioningSystem;
    private int usbPorts;
    private boolean bluetoothWifiConnectivity;
    private int soundSystem;
    private boolean vinFastConnectService;

}

