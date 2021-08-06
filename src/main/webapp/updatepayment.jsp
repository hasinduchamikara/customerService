<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="payl.css">
<link rel="stylesheet" href="headfoot.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String cid = request.getParameter("id");
		String email = request.getParameter("email");
		String pack = request.getParameter("pack");
		String cardno = request.getParameter("cardno");
		String cvc = request.getParameter("cvc");
		String pmeth = request.getParameter("paym");
	%>
	
<header>
	<div class="overlay">
<h1>Dialog CustomerCare</h1>
<h3> You Have Many Reasons for Choose US</h3>

	<br>
	
		</div>
</header>	
	
	<form action="updateCus" method="post">
		<label for="cid"><b>User ID</b></label>
		<input type="text" name="cid" value="<%= cid%>" readonly><br>
		<label for="email"><b>Email</b></label>
		<input type="text" name="email" value="<%= email%>"><br>
		<label for="pack"><b>Package</b></label>
		<input type="text" name="pack" value="<%= pack%>"><br> 
		<label for="cno"><b>Card No</b></label>
		<input type="text" name="cno" value="<%= cardno%>"><br>
		<label for="no"><b>CVC</b></label>
		<input type="text" name="no" value="<%= cvc%>"><br>
		<label for="paymeth"><b>Payment Method</b></label>
		<input type="text" name="paymeth" value="<%= pmeth%>"><br>
		
		<!-- <input type="submit" name="submit" value="Update" style="font-size: large; border-radius: 5px; padding: 7px;"><br> -->
		<button type="submit" name="submit" style="font-size: large; border-radius: 5px; padding: 7px;">Update</button>
	</form>

<footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About Us</h6><br>
            <p class="text-justify">Dialog is a subsidiary of Axiata Group Berhad which owns 83.32% controlling stake of the company, while the rest is held by the public. ... Dialog Broadband offers fixed-line and broadband internet services</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Contact Us</h6><br>
            <ul class="footer-links">
              <li><a href="http://fb.com/about/">FaceBook</a></li>
              <li><a href="http://instragram.com/sitemap/">Instragram</a></li> 
              <li>Hot Line : +94777 200300, +94777 600200, +94777 800600</li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
         <br>   <p class="copyright-text">Copyright &copy; 2021 All Rights Reserved by 
         <a href="#">Puredex</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
	
</body>
</html>