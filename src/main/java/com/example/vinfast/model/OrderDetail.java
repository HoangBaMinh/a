package com.example.vinfast.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetail {
    int orderID;
    int carID;
    int quantity;
    double price;
    double discount;
    double total;
}

