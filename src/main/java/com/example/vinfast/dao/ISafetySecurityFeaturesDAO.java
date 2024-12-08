package com.example.vinfast.dao;

import com.example.vinfast.model.SafetySecurityFeatures;

import java.util.List;

public interface ISafetySecurityFeaturesDAO {
    List<SafetySecurityFeatures> findAllSafetySecurityFeatures();

    void createSafetySecurityFeatures(SafetySecurityFeatures safetySecurityFeatures);

    void updateSafetySecurityFeatures(SafetySecurityFeatures safetySecurityFeatures);

    void deleteSafetySecurityFeatures(int id);

    SafetySecurityFeatures findSafetySecurityFeaturesById(int id);
}
