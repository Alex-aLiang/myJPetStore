package org.csu.mypetstore.web;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class ViewNewOrderFormServlet extends HttpServlet {
    private static final String ViewNewOrderForm="/WEB-INF/jsp/order/NewOrderForm.jsp";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        String []cardTypes={"Visa","Mastercard","American Express"};
        session.setAttribute("cardTypes",cardTypes);
        request.getRequestDispatcher(ViewNewOrderForm).forward(request,response);
    }
}
