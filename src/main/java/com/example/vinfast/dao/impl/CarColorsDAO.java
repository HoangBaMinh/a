package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.ICarColorsDAO;
import com.example.vinfast.mapper.impl.CarcolorsMapper;
import com.example.vinfast.model.Carcolors;

import java.util.List;

public class CarColorsDAO extends AbstractDAO<Carcolors> implements ICarColorsDAO {
    @Override
    public List<Carcolors> findAllCarcolors() {
        String query = "SELECT CarId, ColorId FROM carcolors";
        return query(query, new CarcolorsMapper());
    }

    @Override
    public void createCarcolors(Carcolors carcolors) {
        String query =
                """
                        INSERT INTO carcolors (CarID)
                        VALUES(?)
                        """;
        insert(
                query,
                carcolors.getCarId()
        );
    }

    @Override
    public void updateCarcolors(Carcolors carcolors) {
        String query =
                """
                        UPDATE carcolors SET CarID = ?
                        WHERE ColorID = ?;
                        """;
        update(query, carcolors.getCarId(), carcolors.getColorId());
    }

    @Override
    public void deleteCarcolors(int id) {
        String query = "DELETE FROM carcolors WHERE CarID =?;";
        delete(query, id);
    }

    @Override
    public Carcolors findCarcolorsById(int id) {
        String query =
                """
                        SELECT CarId, ColorId FROM carcolors
                        WHERE ColorId =?;
                        """;
        List<Carcolors> list = query(query, new CarcolorsMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}
