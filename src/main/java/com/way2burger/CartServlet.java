package com.way2burger;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.*;

public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String item = req.getParameter("item");
        String price = req.getParameter("price");

        HttpSession session = req.getSession();
        List<String> cart = (List<String>) session.getAttribute("cart");
        if (cart == null) cart = new ArrayList<>();

        cart.add(item + " - ₹" + price);
        session.setAttribute("cart", cart);

        resp.sendRedirect("menu");
    }
}
