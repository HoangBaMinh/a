package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.IOrderDetailDAO;
import com.example.vinfast.mapper.impl.ColorsMapper;
import com.example.vinfast.mapper.impl.OrderDetailMapper;
import com.example.vinfast.mapper.impl.OrderMapper;
import com.example.vinfast.model.Colors;
import com.example.vinfast.model.OrderDetail;

import java.util.List;

public class OrderDetailDAO extends AbstractDAO<OrderDetail> implements IOrderDetailDAO {
    @Override
    public List<OrderDetail> findAllOrderDetail() {
        String query = "SELECT OrderId, CarId, Quantity, Price, Discount, Total FROM orderdetails";
        return query(query, new OrderDetailMapper());
    }

    @Override
    public void createOrder(OrderDetail orderDetail) {
        String query =
                """
                INSERT INTO orderdetails (OrderId, CarId, Quantity, Price, Discount, Total)
                VALUES(?, ?, ?, ?, ?, ?)
                """;
        insert(
                query,
                orderDetail.getOrderID(),
                orderDetail.getCarID(),
                orderDetail.getQuantity(),
                orderDetail.getPrice(),
                orderDetail.getDiscount(),
                orderDetail.getTotal()
        );
    }

    @Override
    public void updateOrderDetail(OrderDetail orderDetail) {
        String query =
                """
                        UPDATE orderdetails SET OrderId = ?, CarId = ?, Quantity = ?, Price = ?, Discount = ?, Total = ?
                        WHERE OrderId = ? AND CarId = ?;
                        """;
        update(query, orderDetail.getOrderID(), orderDetail.getCarID());
    }

    @Override
    public void deleteOrderDetail(int id1, int id2) {
        String query = "DELETE FROM orderdetails WHERE OrderId =? AND CarId = ?;";
        delete(query, id1, id2);
    }


    @Override
    public OrderDetail findOrderDetailById(int id1, int id2) {
        String query =
                """
                        SELECT OrderId, CarId, Quantity, Price, Discount, Total
                        WHERE OrderId =? AND CarId = ?;
                        """;
        List<OrderDetail> list = query(query, new OrderDetailMapper(), id1, id2);
        return list.isEmpty() ? null: list.getFirst();
    }

}
