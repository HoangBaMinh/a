package com.example.vinfast.test;

import com.example.vinfast.dao.ISafetySecurityFeaturesDAO;
import com.example.vinfast.dao.impl.SafetySecurityFeaturesDAO;
import com.example.vinfast.model.SafetySecurityFeatures;
import com.example.vinfast.service.IUserService;
import com.example.vinfast.service.impl.UserService;

public class testMain {
    public static void main(String[] args) {
        ISafetySecurityFeaturesDAO a = new SafetySecurityFeaturesDAO();
        SafetySecurityFeatures safe1 = SafetySecurityFeatures.builder()
                .id(1)
                .carId(2)
                .absSystem(true)
                .build();

        a.createSafetySecurityFeatures(safe1);
    }
}
