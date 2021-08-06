<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="payl.css">
<link rel="stylesheet" href="headfoot.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<style type="text/css">
		table, th, td {
			border: 1px solid black;
			text-align: center;
		}
		
	</style>

</head>
<body>

<header>
	<div class="overlay">
<h1>Dialog CustomerCare</h1>
<h3> You Have Many Reasons for Choose US</h3>

	<br>
	
		</div>
</header>

	<h2 id="new">Saving process is successful</h2>
	<br>
	<h3 id="new1">Payment details Summary</h3>
	<table>
	
	<c:forEach var="paymnt" items="${paydetails}">
	
	<c:set var="id" value="${paymnt.userId}"/>
	<c:set var="email" value="${paymnt.email}"/>
	<c:set var="pack" value="${paymnt.packtype}"/>
	<c:set var="cardno" value="${paymnt.cardno}"/>
	<c:set var="cvc" value="${paymnt.cvc}"/>
	<c:set var="paymeth" value="${paymnt.paymethod}"/>
	
	<tr>
		<td><b>User Id</b></td>
		<td>${paymnt.userId}</td>
	</tr>
	<tr>
		<td><b>User Email</b></td>
		<td>${paymnt.email}</td>
	</tr>
	<tr>
		<td><b>User Package</b></td>
		<td>${paymnt.packtype}</td>
	</tr>
	<tr>
		<td><b>Card No</b></td>
		<td>${paymnt.cardno}</td>
	</tr>
	<tr>
		<td><b>CVC No</b></td>
		<td>${paymnt.cvc}</td>
	</tr>
	<tr>
		<td><b>Payment Method</b></td>
		<td>${paymnt.paymethod}</td>
	</tr>
	
	</c:forEach>
	</table>
	
	
	<c:url value="updatepayment.jsp" var="cupdate">
		<c:param name="id" value="${id}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="pack" value="${pack}"/>
		<c:param name="cardno" value="${cardno}"/>
		<c:param name="cvc" value="${cvc}"/>
		<c:param name="paym" value="${paymeth}"/>
	</c:url>
	
	<br>
	
	<a href="${cupdate}">
	<!-- <input type="button" name="update" value="Update Payment Method" style="font-size: large; border-radius: 5px; padding: 7px;"> -->
	<button type="submit" name="update" style="font-size: large; border-radius: 5px; padding: 7px;">Update Payment Method</button>
	</a>
	
	<br>
	<c:url value="deletepayment.jsp" var="cdelete">
		<c:param name="id" value="${id}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="pack" value="${pack}"/>
		<c:param name="cardno" value="${cardno}"/>
		<c:param name="cvc" value="${cvc}"/>
		<c:param name="paym" value="${paymeth}"/>
	</c:url>
	
	<br>
	
	<a href="${cdelete}">
	<!-- <input type="button" name="delete" value="Delete Payment Method" style="font-size: large; border-radius: 5px; padding: 7px;"> -->
	<button type="submit" name="delete" style="font-size: large; border-radius: 5px; padding: 7px;">Delete Payment Method</button>
	</a>

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