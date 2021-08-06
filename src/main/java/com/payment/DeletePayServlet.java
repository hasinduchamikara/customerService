package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeletePayServlet")
public class DeletePayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cid");
		
		boolean isSuccessful;
		
		isSuccessful = PaymentDbUtil.deletepaymethod(id);
		
		if(isSuccessful == true) {
			RequestDispatcher rdis = request.getRequestDispatcher("payment.jsp");
			rdis.forward(request, response);
		}
		else {
			
			List<paymentview> paydetails = PaymentDbUtil.getUserDetails(id);
			request.setAttribute("paydetails", paydetails);
			
			RequestDispatcher rdis = request.getRequestDispatcher("PaymentSummary.jsp");
			rdis.forward(request, response);
		}
	}

}
