package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.ISafetySecurityFeaturesDAO;
import com.example.vinfast.mapper.impl.BlogMapper;
import com.example.vinfast.mapper.impl.SafetySecurityFeaturesMapper;
import com.example.vinfast.model.Blog;
import com.example.vinfast.model.SafetySecurityFeatures;

import java.util.List;

public class SafetySecurityFeaturesDAO  extends AbstractDAO<SafetySecurityFeatures> implements ISafetySecurityFeaturesDAO {
    @Override
    public List<SafetySecurityFeatures> findAllSafetySecurityFeatures() {
        return List.of();
    }

    @Override
    public void createSafetySecurityFeatures(SafetySecurityFeatures safetySecurityFeatures) {
        String query =
                """
                INSERT INTO SafetySecurityFeatures(CarId, ABSSystem, EBDSystem, BASystem,
                ESCSystem, TCSSystem, HSASystem, ROMSystem, LASSupport, AutoLockDoor, AirbagSystem,
                TPMSMonitoring, SeatBeltTension)
                VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
                """;

        insert(
                query,
                safetySecurityFeatures.getCarId(),
                safetySecurityFeatures.isAbsSystem(),
                safetySecurityFeatures.isEbdSystem(),
                safetySecurityFeatures.isBaSystem(),
                safetySecurityFeatures.isEscSystem(),
                safetySecurityFeatures.isTcsSystem(),
                safetySecurityFeatures.isHsaSystem(),
                safetySecurityFeatures.isRomSystem(),
                safetySecurityFeatures.isLasSupport(),
                safetySecurityFeatures.isAutoLockDoor(),
                safetySecurityFeatures.getAirbagSystem(),
                safetySecurityFeatures.getTpmsMonitoring(),
                safetySecurityFeatures.isSeatBeltTension()
        );
    }

    @Override
    public void updateSafetySecurityFeatures(SafetySecurityFeatures safetySecurityFeatures) {
        String query =
                """
                UPDATE SafetySecurityFeatures SET CarId = ?, ABSSystem = ?, EBDSystem = ?, BASystem = ?, ESCSystem = ?, TCSSystem = ?, HSASystem = ?, ROMSystem = ?, LASSupport = ?, AutoLockDoor = ?, AirbagSystem = ?, TPMSMonitoring = ?, SeatBeltTension = ?
                WHERE id = ?;
                """;
        update(query,safetySecurityFeatures.getCarId(),
                safetySecurityFeatures.isAbsSystem(),
                safetySecurityFeatures.isEbdSystem(),
                safetySecurityFeatures.isBaSystem(),
                safetySecurityFeatures.isEscSystem(),
                safetySecurityFeatures.isTcsSystem(),
                safetySecurityFeatures.isHsaSystem(),
                safetySecurityFeatures.isRomSystem(),
                safetySecurityFeatures.isLasSupport(),
                safetySecurityFeatures.isAutoLockDoor(),
                safetySecurityFeatures.getAirbagSystem(),
                safetySecurityFeatures.getTpmsMonitoring(),
                safetySecurityFeatures.isSeatBeltTension(),
                safetySecurityFeatures.getId()
                );
    }

    @Override
    public void deleteSafetySecurityFeatures(int id) {
        String query = "DELETE FROM SafetySecurityFeatures WHERE id = ?;";
        delete(query, id);
    }

    @Override
    public SafetySecurityFeatures findSafetySecurityFeaturesById(int id) {
        String query =
                """
                        SELECT CarId, ABSSystem, EBDSystem, BASystem,
                        ESCSystem, TCSSystem, HSASystem, ROMSystem, LASSupport, AutoLockDoor, AirbagSystem,
                        TPMSMonitoring, SeatBeltTension
                        FROM Blogs
                        WHERE id = ?;
                        """;
        List<SafetySecurityFeatures> list = query(query, new SafetySecurityFeaturesMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}
