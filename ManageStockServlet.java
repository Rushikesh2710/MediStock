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

@WebServlet("/manageStock")
public class ManageStockServlet extends HttpServlet {

    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        List<Medicine> list = new MedicineDAO().getAllMedicines();
        req.setAttribute("medicines", list);
        req.getRequestDispatcher("/WEB-INF/manageStock.jsp")
           .forward(req, res);
    }

    @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        new MedicineDAO().updateStock(id, quantity);
        res.sendRedirect("manageStock");
    }
}
