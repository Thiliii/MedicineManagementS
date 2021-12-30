package com.servlet.medicine;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.IMedicineService;
import com.service.MedicineService;


@WebServlet("/deletemedicine")
public class DeleteMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DeleteMedicineServlet() {
        super();
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");

		int id = Integer.parseInt(request.getParameter("id"));

		IMedicineService imedicineservice = new MedicineService();
		imedicineservice.removeMedicine(id);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewmedicines.jsp");
		dispatcher.forward(request, response);
	}

}
