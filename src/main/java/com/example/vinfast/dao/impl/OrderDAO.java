package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.IOrdersDAO;
import com.example.vinfast.mapper.impl.ColorsMapper;
import com.example.vinfast.mapper.impl.OrderMapper;
import com.example.vinfast.model.Colors;
import com.example.vinfast.model.Order;

import java.util.List;

public class OrderDAO extends AbstractDAO<Order> implements IOrdersDAO {
    @Override
    public List<Order> findAllOrders() {
        String query = "SELECT OrderId, UserId, TotalAmount, Status, PaymentMethod, Note, OrderDate, DeliveryAddress FROM orders";
        return query(query, new OrderMapper());
    }

    @Override
    public void createOrder(Order order) {
        String query =
                """
                INSERT INTO orders (UserId, TotalAmount, Status, PaymentMethod, Note, OrderDate, DeliveryAddress)
                VALUES(?, ?, ?, ?, ?, ?, ?)
                """;
        insert(
                query,
                order.getUserID(),
                order.getTotalAmount(),
                order.getStatus(),
                order.getPaymentMethod(),
                order.getNote(),
                order.getOrderDate(),
                order.getDeliveryAddress()
        );
    }

    @Override
    public void updateOrder(Order order) {
        String query =
                """
                        UPDATE orders SET UserId = ?, TotalAmount = ?, Status = ?, PaymentMethod = ?, Note = ?, OrderDate = ?, DeliveryAddress = ?
                        WHERE OrderId = ?;
                        """;
        update(query, order.getUserID(), order.getTotalAmount(), order.getStatus(), order.getPaymentMethod(),order.getNote(), order.getOrderDate(), order.getDeliveryAddress() ,order.getOrderID());
    }

    @Override
    public void deleteOrder(int id) {
        String query = "DELETE FROM orders WHERE OrderId =?;";
        delete(query, id);
    }

    @Override
    public Order findOrderById(int id) {
        String query =
                """
                        SELECT OrderId, UserId, TotalAmount, Status, PaymentMethod, Note, OrderDate, DeliveryAddress FROM categories
                        WHERE OrderId =?;
                        """;
        List<Order> list = query(query, new OrderMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}
