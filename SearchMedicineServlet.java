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

@WebServlet("/searchMedicine")
public class SearchMedicineServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get search keyword from request
        String keyword = request.getParameter("keyword");

        // 2. Call DAO method
        MedicineDAO dao = new MedicineDAO();
        List<Medicine> medicines = dao.searchMedicineByName(keyword);

        // 3. Set result in request scope
        request.setAttribute("medicines", medicines);

        // 4. Forward to view page
        request.getRequestDispatcher("viewMedicine.jsp")
               .forward(request, response);
    }
}