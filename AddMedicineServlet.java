package com.medicinestore.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicinestore.dao.MedicineDAO;
import com.medicinestore.model.Medicine;

@WebServlet("/addMedicine")
public class AddMedicineServlet extends HttpServlet {

    // OPEN ADD MEDICINE PAGE
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        req.getRequestDispatcher("/WEB-INF/addMedicine.jsp")
           .forward(req, res);
    }

    // SAVE MEDICINE
    @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        Medicine m = new Medicine();
        m.setName(req.getParameter("name"));
        m.setPrice(Double.parseDouble(req.getParameter("price")));
        m.setQuantity(Integer.parseInt(req.getParameter("quantity")));

        new MedicineDAO().addMedicine(m);

        res.sendRedirect("viewMedicine");
    }
}