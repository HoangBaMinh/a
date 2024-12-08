package com.example.vinfast.dao;


import com.example.vinfast.model.Categories;

import java.util.List;

public interface ICategoriesDAO {
    List<Categories> findAllCategories();

    void createCategories(Categories categories);

    void updateCategories(Categories categories);

    void deleteCategories(int id);

    Categories findCategoriesById(int id);
}
