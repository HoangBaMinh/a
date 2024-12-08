package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class CarExteriorFeatures {
    private int id;
    private int carId;
    private String headlightType;
    private String headlightFeatures;
    private String daytimeRunningLight;
    private String mirrorType;
    private String mirrorFeatures;
    private String wiperFunction;
    private String sunroof;

    // Getters and setters
}

