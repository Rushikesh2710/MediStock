package com.medicinestore.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicinestore.dao.MedicineDAO;
import com.medicinestore.model.Medicine;

@WebServlet("/viewMedicine")
public class ViewMedicineServlet extends HttpServlet {

    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MedicineDAO dao = new MedicineDAO();
        List<Medicine> list = dao.getAllMedicines();

        request.setAttribute("medicines", list);
        RequestDispatcher rd =
            request.getRequestDispatcher("/WEB-INF/viewMedicine.jsp");
        rd.forward(request, response);
    }
}