<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="payl.css">
<link rel="stylesheet" href="headfoot.css">
<meta charset="ISO-8859-1">
<title>Payment Login</title>
		
</head>
<body>

<header>
	<div class="overlay">
<h1>Dialog CustomerCare</h1>
<h3> You Have Many Reasons for Choose US</h3>

	<br>
	
		</div>
</header>

<div class="plog">
	<h2 id="new">Press "Proceed" to see Payment details</h2>
	<form action="payProceed" method="post">
		<label for="uid"><b>User ID</b></label>
		<input type="text" name="uid" placeholder="Enter Your User ID" style="width: 80%; height: 30px;" required><br>
		
		<br>
		
		<!-- <input type="submit" name="submit" value="Proceed" style="font-size: large; border-radius: 5px; padding: 7px;"> -->
		<button type="submit" style="font-size: large; border-radius: 5px; padding: 7px;">Proceed</button>
	</form>
	
	<br>
	<a href="payment.jsp">
	<!--<input type="button" name="delete" value="Add Payment Method" style="font-size: large; border-radius: 5px; padding: 7px;"> -->
	<button type="submit" style="font-size: large; border-radius: 5px; padding: 7px;">Add Payment Method</button>
	</a>
	<br>
	
</div>

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
              <li><a class="facebook" href="#"><!-- <i class="fa fa-facebook"></i>--></a></li> 
              <li><a class="twitter" href="#"><!-- <i class="fa fa-twitter"></i> --></a></li>
              <li><a class="dribbble" href="#"><!--<i class="fa fa-dribbble"></i>  --></a></li>
              <li><a class="linkedin" href="#"><!-- <i class="fa fa-linkedin"></i> --></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>


</body>
</html>