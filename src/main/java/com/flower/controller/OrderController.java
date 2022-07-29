package com.flower.controller;


import com.flower.pojo.Cart;
import com.flower.pojo.Order;
import com.flower.pojo.OrderItem;
import com.flower.pojo.User;
import com.flower.service.OrderService;
import com.flower.service.impl.OrderServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController{

    @Autowired
    private OrderService orderService;

    @RequestMapping("/createOrder")
    protected String createOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cart cart = (Cart) req.getSession().getAttribute("cart");
        User user = (User) req.getSession().getAttribute("user");
        if(user == null){
//            req.getRequestDispatcher("/pages/signin.jsp").forward(req,resp);
            return "forward:"+"/pages/signin.jsp";
        }
        Integer userId = user.getId();
        String orderId = orderService.createOrder(cart,userId);
        req.getSession().setAttribute("orderId",orderId);

//        req.getRequestDispatcher("/pages/cart/checkout.jsp").forward(req,resp);
//        resp.sendRedirect(req.getContextPath()+"/pages/checkout.jsp");
        return "redirect:/pages/checkout.jsp";

    }

    @RequestMapping("/watchOrdersById")
    protected String watchOrdersById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if(user == null){
            req.getRequestDispatcher("/pages/signin.jsp").forward(req,resp);
            return "forward:"+"/pages/signin.jsp";
        }
        Integer userId = user.getId();
        List<Order> orders = orderService.watchOrdersById(userId);
        req.getSession().setAttribute("orders",orders);

//        resp.sendRedirect(req.getContextPath()+"/pages/order.jsp");
        return "redirect:/pages/order.jsp";
    }

    @RequestMapping("/watchOrdersDetailByOrderId")
    protected String watchOrdersDetailByOrderId(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            User user = (User) req.getSession().getAttribute("user");
            String orderId = req.getParameter("orderId");
            if(user == null){
                req.getRequestDispatcher("/pages/signin.jsp").forward(req,resp);
                return "forward:/pages/signin.jsp";
            }
            Integer userId = user.getId();

            List<OrderItem> orderItems = orderService.watchOrderDetail(orderId);
            req.getSession().setAttribute("orderItems",orderItems);
//        req.getRequestDispatcher("/pages/cart/checkout.jsp").forward(req,resp);
//        resp.sendRedirect(req.getContextPath()+"/pages/order_detail.jsp");
            return "redirect:/pages/order_detail.jsp";

    }

    @RequestMapping("/delivery")
    protected String delivery(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        OrderService orderService = new OrderServiceImpl();
        orderService.deliveryById(req.getParameter("id"));
//        resp.sendRedirect(req.getContextPath()+"/pages/manager/order_manager.jsp");
        return "redirect:/pages/manager/order_manager.jsp";
    }

    @RequestMapping("/watchOrders")
    protected String watchOrders(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Order> orders = orderService.watchOrders();
        req.getSession().setAttribute("orders",orders);
//        resp.sendRedirect(req.getContextPath()+"/pages/manager/order_manager.jsp");
        return "redirect:/pages/manager/order_manager.jsp";
    }
}
