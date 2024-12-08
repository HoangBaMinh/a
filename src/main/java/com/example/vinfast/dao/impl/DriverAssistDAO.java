package com.example.vinfast.dao.impl;

import java.util.List;

import com.example.vinfast.dao.IDriverAssistDAO;
import com.example.vinfast.mapper.impl.DriverAssistMapper;
import com.example.vinfast.model.DriverAssist;

public class DriverAssistDAO extends AbstractDAO<DriverAssist> implements IDriverAssistDAO{

    @Override
    public List<DriverAssist> findAll() {
        String query = """
				SELECT DriverAssistId, CarId, HwyAssist, LaneKeepAssist, TrafficSignRec, DriverMon, LaneCentering, TrafficJamAssist, Cruise,
					AdaptiveCruise, SpeedAdjust, FrontCollWarn, FrontAutoBrake, RearAutoBrake, IntersectionWarn, AutoLaneKeep,
					RearCrossWarn, BlindSpotWarn FROM driverassist;
				""";
        return query(query, new DriverAssistMapper());
    }

    @Override
    public DriverAssist findById(int id) {
        String query = """
				SELECT DriverAssistId, CarId, HwyAssist, LaneKeepAssist, TrafficSignRec, DriverMon, LaneCentering, TrafficJamAssist, Cruise,
					AdaptiveCruise, SpeedAdjust, FrontCollWarn, FrontAutoBrake, RearAutoBrake, IntersectionWarn, AutoLaneKeep,
					RearCrossWarn, BlindSpotWarn FROM driverassist WHERE DriverAssistId=?;
				""";
        List<DriverAssist> list = query(query, new DriverAssistMapper(), id);
        return list.isEmpty() ? null : list.get(0);
    }

    @Override
    public void insertDA(DriverAssist da) {
        String query = """
					INSERT INTO driverassist(CarId, HwyAssist, LaneKeepAssist, TrafficSignRec, DriverMon, LaneCentering, TrafficJamAssist, Cruise,
					AdaptiveCruise, SpeedAdjust, FrontCollWarn, FrontAutoBrake, RearAutoBrake, IntersectionWarn, AutoLaneKeep,
					RearCrossWarn, BlindSpotWarn) VALUES
					(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
				""";
        insert(query, da.getCarId(), da.isHwyAssist(), da.isLaneKeepAssist(), da.isTrafficSignRec(), da.isDriverMon(), da.isLaneCentering(),
                da.isTrafficJamAssist(), da.isCruise(), da.isAdaptiveCruise(), da.isSpeedAdjust(), da.isFrontCollWarn(), da.isFrontAutoBrake(),
                da.isRearAutoBrake() ,da.isIntersectionWarn(), da.isAutoLaneKeep(), da.isRearCrossWarn(), da.isBlindSpotWarn());
    }

    @Override
    public void updateDA(DriverAssist da) {
        String query = """
					UPDATE driverassist set CarId=?, HwyAssist=?, LaneKeepAssist=?, TrafficSignRec=?, DriverMon=?, LaneCentering=?, TrafficJamAssist=?, Cruise=?,
					AdaptiveCruise=?, SpeedAdjust=?, FrontCollWarn=?, FrontAutoBrake=?, RearAutoBrake=?, IntersectionWarn=?, AutoLaneKeep=?,
					RearCrossWarn=?, BlindSpotWarn=? WHERE DriverAssistId=?
				""";
        update(query, da.getCarId(), da.isHwyAssist(), da.isLaneKeepAssist(), da.isTrafficSignRec(), da.isDriverMon(), da.isLaneCentering(),
                da.isTrafficJamAssist(), da.isCruise(), da.isAdaptiveCruise(), da.isSpeedAdjust(), da.isFrontCollWarn(), da.isFrontAutoBrake(),
                da.isRearAutoBrake() ,da.isIntersectionWarn(), da.isAutoLaneKeep(), da.isRearCrossWarn(), da.isBlindSpotWarn(), da.getId());

    }

    @Override
    public void deleteDA(int id) {
        String query = """
					DELETE FROM driverassist WHERE DriverAssistId=?
				""";
        delete(query, id);
    }

}