package com.flower.service;

import com.flower.pojo.Cart;
import com.flower.pojo.Order;
import com.flower.pojo.OrderItem;

import java.util.List;


public interface OrderService {
    public String createOrder(Cart cart, Integer userId);
    public List<Order> watchOrders();
    public List<OrderItem> watchOrderDetail(String orderId);
    public void deliveryById(String orderId);
    public List<Order> watchOrdersById(Integer userId);
}
