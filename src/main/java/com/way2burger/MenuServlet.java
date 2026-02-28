package com.way2burger;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.*;

public class MenuServlet extends HttpServlet {

    public static class Item {
        public String name, img;
        public double price;
        public Item(String n,String i,double p){name=n;img=i;price=p;}
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user")==null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        List<Item> menu = new ArrayList<>();
        try (Connection con = DBConnection.getConnection()) {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM menu_items");
            while (rs.next()) {
                menu.add(new Item(rs.getString("name"),
                                  rs.getString("img"),
                                  rs.getDouble("price")));
            }
        } catch (SQLException e) { throw new ServletException(e); }

        req.setAttribute("menu", menu);
        req.getRequestDispatcher("menu.jsp").forward(req, resp);
    }
}
