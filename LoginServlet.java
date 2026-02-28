package com.medicinestore.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medicinestore.dao.AdminDAO;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // ✅ Handle GET request (open login page)
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        RequestDispatcher rd =
                request.getRequestDispatcher("/WEB-INF/login.jsp");
        rd.forward(request, response);
    }

    // ✅ Handle POST request (login logic)
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        AdminDAO dao = new AdminDAO();

        if (dao.validate(username, password)) {
            HttpSession session = request.getSession();
            session.setAttribute("admin", username);

            response.sendRedirect("dashboard");
        } else {
            request.setAttribute("error", "Invalid Username or Password");
            RequestDispatcher rd =
                    request.getRequestDispatcher("/WEB-INF/login.jsp");
            rd.forward(request, response);
        }
    }
}