package com.flower.service.impl;

import com.flower.dao.FlowerDao;
import com.flower.dao.OrderDao;
import com.flower.dao.OrderItemDao;
import com.flower.pojo.Cart;
import com.flower.pojo.CartItem;
import com.flower.pojo.Order;
import com.flower.pojo.OrderItem;
import com.flower.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderDao orderDao ;

    @Autowired
    private OrderItemDao orderItemDao ;

    @Autowired
    private FlowerDao flowerDao ;

    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public List<Order> watchOrdersById(Integer userId) {
        return orderDao.querryOrderById(userId);
    }

    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public String createOrder(Cart cart, Integer userId) {
        //orderId要唯一：用时间戳
        String orderId = System.currentTimeMillis()+""+userId;
        Order order = new Order(orderId,new Date(),cart.getTotalPrice(),0,userId);

        orderDao.saveOrder(order);

        for (Map.Entry<Integer, CartItem>entry: cart.getItems().entrySet()){
            CartItem cartItem = entry.getValue();
            OrderItem orderItem = new OrderItem(null,cartItem.getName(),cartItem.getCount(),cartItem.getPrice(),cartItem.getTotalPrice(),orderId);
            orderItemDao.saveOrderItem(orderItem);
        }
        cart.clear();
        return orderId;
    }

    @Transactional(propagation= Propagation.REQUIRED,readOnly=false)
    @Override
    public void deliveryById(String orderId) {
        orderDao.updateStatusById(orderId);
    }


    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public List<Order> watchOrders() {
        return orderDao.querryOrders();
    }


    @Transactional(propagation= Propagation.SUPPORTS,readOnly=true)
    @Override
    public List<OrderItem> watchOrderDetail(String orderId) {
        return orderItemDao.querryOrderItemByOrderId(orderId);
    }
}
