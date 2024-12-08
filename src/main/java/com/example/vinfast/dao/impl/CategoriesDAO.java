package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.ICategoriesDAO;
import com.example.vinfast.mapper.impl.CarcolorsMapper;
import com.example.vinfast.mapper.impl.CategoryMapper;
import com.example.vinfast.model.Categories;

import java.util.List;

public class CategoriesDAO extends AbstractDAO<Categories> implements ICategoriesDAO {
    @Override
    public List<Categories> findAllCategories() {
        String query = "SELECT CategoryID, Name, Description, Status FROM categories";
        return query(query, new CategoryMapper());
    }

    @Override
    public void createCategories(Categories categories) {
        String query =
                """
                INSERT INTO categories (Name, Description, Status FROM categories)
                VALUES(?, ?, ?)
                """;
        insert(
                query,
                categories.getName(),
                categories.getDescription(),
                categories.getStatus()
        );
    }

    @Override
    public void updateCategories(Categories categories) {
        String query =
                """
                        UPDATE categories SET Name = ?, Description = ?, Status = ?
                        WHERE CategoryID = ?;
                        """;
        update(query, categories.getName(), categories.getDescription(), categories.getStatus(),categories.getCategoryId());
    }

    @Override
    public void deleteCategories(int id) {
        String query = "DELETE FROM categories WHERE CategoryID =?;";
        delete(query, id);
    }

    @Override
    public Categories findCategoriesById(int id) {
        String query =
                """
                        SELECT CategoryID, Name, Description, Status FROM categories
                        WHERE CategoryID =?;
                        """;
        List<Categories> list = query(query, new CategoryMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}
