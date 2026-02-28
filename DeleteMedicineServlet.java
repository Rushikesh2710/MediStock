package com.medicinestore.controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicinestore.dao.MedicineDAO;

@WebServlet("/deleteMedicine")
public class DeleteMedicineServlet extends HttpServlet {

    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        new MedicineDAO().deleteMedicine(id);
        res.sendRedirect("viewMedicine");
    }
}