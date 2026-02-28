package com.medicinestore.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicinestore.dao.MedicineDAO;
import com.medicinestore.model.Medicine;

@WebServlet("/editMedicine")
public class EditMedicineServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String idParam = req.getParameter("id");

        if (idParam == null) {
            res.sendRedirect("viewMedicine");
            return;
        }

        int id = Integer.parseInt(idParam);

        MedicineDAO dao = new MedicineDAO();
        Medicine m = dao.getMedicineById(id);

        if (m == null) {
            res.sendRedirect("viewMedicine");
            return;
        }

        req.setAttribute("medicine", m);
        req.getRequestDispatcher("/WEB-INF/editMedicine.jsp")
           .forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws IOException {

        Medicine m = new Medicine();
        m.setId(Integer.parseInt(req.getParameter("id")));
        m.setName(req.getParameter("name"));
        m.setPrice(Double.parseDouble(req.getParameter("price")));
        m.setQuantity(Integer.parseInt(req.getParameter("quantity")));

        new MedicineDAO().updateMedicine(m);
        res.sendRedirect("viewMedicine");
    }
}