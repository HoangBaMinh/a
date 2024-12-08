package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SafetySecurityFeatures {
    private int id;
    private int carId;
    private boolean absSystem;
    private boolean ebdSystem;
    private boolean baSystem;
    private boolean escSystem;
    private boolean tcsSystem;
    private boolean hsaSystem;
    private boolean romSystem;
    private boolean lasSupport;
    private boolean autoLockDoor;
    private int airbagSystem;
    private String tpmsMonitoring;
    private boolean seatBeltTension;

}
