package com.flower.dao;

import com.flower.pojo.OrderItem;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OrderItemDao {

    public int saveOrderItem(OrderItem orderItem);

    public List<OrderItem> querryOrderItemByOrderId(String orderId);
}
