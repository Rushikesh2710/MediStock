package com.medicinestore.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicinestore.dao.MedicineDAO;
import com.medicinestore.model.Medicine;

@WebServlet("/searchStock")
public class SearchStockServlet extends HttpServlet {

    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String keyword = req.getParameter("keyword");

        List<Medicine> list =
            new MedicineDAO().searchByName(keyword);

        req.setAttribute("medicines", list);
        req.getRequestDispatcher("/WEB-INF/manageStock.jsp")
           .forward(req, res);
    }
}
