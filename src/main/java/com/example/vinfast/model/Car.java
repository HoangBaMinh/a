package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.sql.Timestamp;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Car {
    private int carId;
    private String modelName;
    private int categoryId;
    private BigDecimal price;
    private BigDecimal batteryCapacity;
    private int rangePerCharge;
    private String chargingTime;
    private String maxPower;
    private BigDecimal maxSpeed;
    private int stock;
    private int warrantyPeriod;
    private String transmission;
    private BigDecimal energyConsumption;
    private String dimensions;
    private String wheelBase;
    private BigDecimal weight;
    private BigDecimal torque;
    private String drivetrain;
    private String description;
    private Timestamp createdAt;
    private Timestamp updatedAt;
}

