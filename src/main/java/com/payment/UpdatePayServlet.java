package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePayServlet")
public class UpdatePayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("cid");
		String email = request.getParameter("email");
		String pack = request.getParameter("pack");
		String cardno = request.getParameter("cno");
		String cvc = request.getParameter("no");
		String pmeth = request.getParameter("paymeth");
		
		boolean isSuccessful;
		
		isSuccessful = PaymentDbUtil.updateuser(id, email, pack, cardno, cvc, pmeth);
		
		
		
		if(isSuccessful == true) {
			
			try {
				List<paymentview> paydetails = PaymentDbUtil.getUserDetails(id);
				request.setAttribute("paydetails", paydetails);
			}catch (Exception e) {
				e.printStackTrace();
			}
			
			RequestDispatcher req = request.getRequestDispatcher("PaymentSummary.jsp");
			req.forward(request, response);
		}
		else {
			
			List<paymentview> paydetails = PaymentDbUtil.getUserDetails(id);
			request.setAttribute("paydetails", paydetails);
			
			RequestDispatcher req = request.getRequestDispatcher("PsUnsuccess.jsp");
			req.forward(request, response);
			
		}
	}

}
