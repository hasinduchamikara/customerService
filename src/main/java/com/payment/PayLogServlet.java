package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PayLogServlet")
public class PayLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String uid = request.getParameter("uid");
		
		boolean successful;
		
		successful = PaymentDbUtil.validate(uid);
	
		if(successful == true) {
			List<paymentview> paydetails = PaymentDbUtil.getUserDetails(uid);
			request.setAttribute("paydetails", paydetails);
			
			RequestDispatcher reqd = request.getRequestDispatcher("PaymentSummary.jsp");
			reqd.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your user id is incorrect')");
			out.println("location='paylog.jsp'");
			out.println("</script>");
		}
	}

}
  