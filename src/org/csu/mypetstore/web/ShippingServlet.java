package org.csu.mypetstore.web;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Order;
import org.csu.mypetstore.service.CartService;
import org.csu.mypetstore.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ShippingServlet extends HttpServlet {
    private Order order;
    private Account account;
    private CartService cartService;
    private OrderService orderService;
    private static final String ViewConfirmOrderForm="/WEB-INF/jsp/order/ConfirmOrder.jsp";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        order = new Order();
        HttpSession session = request.getSession();
        account = (Account) session.getAttribute("account");
        cartService = new CartService(account);
        orderService = new OrderService();
        order.initOrder(account, cartService, orderService.getOrderNum());
        order.setShipToFirstName(request.getParameter("order.shipToFirstName"));
        order.setShipToLastName(request.getParameter("order.shipToLastName"));
        order.setShipAddress1(request.getParameter("order.shipAddress1"));
        order.setShipAddress2(request.getParameter("order.shipAddress2"));
        order.setShipCity(request.getParameter("order.shipCity"));
        order.setShipState(request.getParameter("order.shipState"));
        order.setShipZip(request.getParameter("order.shipZip"));
        order.setShipCountry(request.getParameter("order.shipCountry"));
        session.setAttribute("order", order);

        request.getRequestDispatcher(ViewConfirmOrderForm).forward(request,response);
    }
}
