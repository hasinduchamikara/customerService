package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Payment")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid = request.getParameter("uid");
		String email = request.getParameter("email");
		String packtype = request.getParameter("packtype");
		String cardno = request.getParameter("cardno");
		String cvc = request.getParameter("cvc");
		String paymethod = request.getParameter("paymethod");
		
		boolean successful;
		
		successful=PaymentDbUtil.insertpayment(uid, email, packtype, cardno, cvc, paymethod);
		
		try {
			List<paymentview> paydetails = PaymentDbUtil.getUserDetails(uid);
			request.setAttribute("paydetails", paydetails);
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		if(successful == true) {
			RequestDispatcher rd = request.getRequestDispatcher("PaymentSummary.jsp");
			rd.forward(request, response);
		}
		else {
			RequestDispatcher rd1 = request.getRequestDispatcher("PsUnsuccess.jsp");
			rd1.forward(request, response);
		}
	}

}
