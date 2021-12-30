package com.servlet.medicine;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Medicines;
import com.service.IMedicineService;
import com.service.MedicineService;


@WebServlet("/addmedicine")
public class AddMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddMedicineServlet() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/addmedicine.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");

		Medicines medicine = new Medicines();

		medicine.setMedicineName(request.getParameter("medicine"));
		medicine.setManufacturer(request.getParameter("manufacturer"));
		medicine.setSupplier(request.getParameter("supplier"));
		medicine.setmCompany(request.getParameter("company"));
		
		IMedicineService imedicineservice = new MedicineService();
		imedicineservice.addMedicine(medicine);

		request.setAttribute("medicine", medicine);
		response.sendRedirect("viewmedicines.jsp");
	}

}
