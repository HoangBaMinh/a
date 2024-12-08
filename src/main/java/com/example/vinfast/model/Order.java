package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
    int orderID;
    int userID;
    double totalAmount;
    String status;
    String paymentMethod;
    String note;
    String orderDate;
    String deliveryAddress;
}

