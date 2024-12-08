package com.example.vinfast.dao;


import com.example.vinfast.model.Order;

import java.util.List;

public interface IOrdersDAO {
    List<Order> findAllOrders();

    void createOrder(Order order);

    void updateOrder(Order order);

    void deleteOrder(int id);

    Order findOrderById(int id);
}
