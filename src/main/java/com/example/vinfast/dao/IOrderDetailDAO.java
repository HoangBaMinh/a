package com.example.vinfast.dao;


import com.example.vinfast.model.OrderDetail;

import java.util.List;

public interface IOrderDetailDAO {
    List<OrderDetail> findAllOrderDetail();

    void createOrder(OrderDetail orderDetail);

    void updateOrderDetail(OrderDetail orderDetail);

    void deleteOrderDetail(int id1, int id2);

    OrderDetail findOrderDetailById(int id1, int id2);
}
