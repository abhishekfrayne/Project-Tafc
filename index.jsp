<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.dao.DAO"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Cloud TAFC Project</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	<link href="color/default.css" rel="stylesheet">
	<!-- <link rel="shortcut icon" href="img/favicon.ico"> -->
	<!-- =======================================================
    Theme Name: Maxim
    Theme URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
    Author: BootstrapMade.com
    Author URL: https://bootstrapmade.com
	======================================================= -->
	
<script type="text/javascript">
    
  function checkvariability()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="none";
    	
    	document.getElementById("works").style.display="none";
    	document.getElementById("working").style.display="none";
    	
    }
   
   
    </script>

    <script type="text/javascript">
    
    function checkvariability1()
    {
    	document.getElementById("contact").style.display="";
    	document.getElementById("services").style.display="none";
    	
    	document.getElementById("works").style.display="none";
    	document.getElementById("working").style.display="none";
    	
    	
    }
   
    </script>


    
    
    <script type="text/javascript">
    
    function checkvariability2()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="";
    	
    	document.getElementById("works").style.display="none";
    	document.getElementById("working").style.display="none";
    	
    	
    }
    
    </script>
    
     
    <script type="text/javascript">
    
    function checkvariability3()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="none";
    	
    	document.getElementById("works").style.display="";
    	document.getElementById("working").style.display="none";
    	
    	
    }
    
    </script>
    
     
    <script type="text/javascript">
    
    function checkvariability4()
    {
    	document.getElementById("contact").style.display="none";
    	document.getElementById("services").style.display="none";
    	
    	document.getElementById("works").style.display="none";
    	document.getElementById("working").style.display="";
    
    	
    }
    
    </script>
   
    
</head>

<body>
	<!-- navbar -->
	<div class="navbar-wrapper">
		<div class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-inner">
				<div class="container">
					<!-- Responsive navbar -->
					<!-- <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> -->
				</a>
					
          <div class="brand" style="position: fixed; top: -15px; left: 115x; ">
            <a href="index.jsp"><h1><b>TAFC: Time and Attribute Factors Combined Access Control on Time-Sensitive Data in Public Cloud</b></h1></a>
          </div>
        </div>
        </br></br> </br></br>
        
        
					<!-- navigation -->
					<nav class="pull-right nav-collapse collapse">
						<ul id="menu-main" class="nav">
						 <li><a title="header-wrapper" href="#header-wrapper" onclick="checkvariability();">Home</a></li>
							<li><a title="contact" href="#contact" onclick="checkvariability1();">Central Authority</a></li>
							<li><a title="services" href="#services" onclick="checkvariability2();">Owner</a></li>
							<li><a title="works" href="#works" onclick="checkvariability3();">User</a></li>
							<li><a title="working" href="#working" onclick="checkvariability4();">User Registration</a></li>
							
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Header area -->
	<div id="header-wrapper" class="header-slider">
		<header class="clearfix">
			<div class="logo">
				<!-- <img src="img/logo-image.png" alt="" /> -->
			</div>
			
					</div>
				</div>
			</div>
		</header>
	</div>
	
	<!-- end spacer section -->
	<!-- section: contact -->
	<section id="contact" class="section green">
		<div class="container">
			<h2><b>Central Authority Login</b></h2>
			
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
						<!-- <div id="sendmessage">Your message has been sent. Thank you!</div> -->
						<!-- <div id="errormessage"></div> -->
						
						 <form  class="login-page" name="f1" id="login" method="post" action="<%=request.getContextPath()%>/AdminLogin"> 
						 
				
							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="username" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4"  />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="password" id="email" placeholder="Your Password" data-rule="email" />
										<div class="validation"></div>
									</div>
									
									<input type="submit" value="Send message" class="btn btn-theme pull-left">
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>
	
	
	
	<!-- dataowner section -->
	<section id="services" class="section green">
		<div class="container">
			<h2><b>Owner Login</b></h2>
			
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
					<!-- 	<div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div> -->
						
						
						
						  <form  class="login-page" name="f1" id="login" method="post" action="<%=request.getContextPath()%>/DataOwnerLogin">
							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="username" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="password" id="email" placeholder="Your Password" data-rule="email"  />
										<div class="validation"></div>
									</div>
									
									<input type="submit" value="Send message" class="btn btn-theme pull-left">
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>
	
<!-- 	User Login section -->
<section id="works" class="section green">
		<div class="container">
			<h2><b>User Login</b></h2>
			
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
						<!-- <div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div> -->
					<%-- 	<form  method="post" role="form" class="contactForm" action="<%=request.getContextPath()%>/select_identytocken.jsp"> --%>
						
						  <form name="f1" id="login" method="post" action="<%=request.getContextPath()%>/select_identytocken.jsp"> 
							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="username" class="form-control" id="name" placeholder="Your Name" />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="password" id="email" placeholder="Your Password" />
										<div class="validation"></div>
									</div>
									
									<input type="submit" value="Send message" class="btn btn-theme pull-left">
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>
	
<!-- 	User Registration Section -->
<section id="working" class="section green">
		<div class="container">
			<h2><b>User Registration </b></h2>
			
			<div class="blankdivider30">
			</div>
			<div class="row">
				<div class="span12">
					<div class="cform" id="contact-form">
						<!-- <div id="sendmessage">Your message has been sent. Thank you!</div>
						<div id="errormessage"></div> -->
						 	<form action="<%=request.getContextPath()%>/NewUser" method="post">
							<div class="row">
								<div class="span6">
									<div class="field your-name form-group">
										<input type="text" name="userid" class="form-control" id="name" placeholder="Your UserId" />
										<div class="validation"></div>
									</div>
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="password" id="email" placeholder="Your Password"  />
										<div class="validation"></div>
									</div>
									<div class="field your-name form-group">
										<input type="text" name="name" class="form-control" id="name" placeholder="Your Name"  />
										<div class="validation"></div>
									</div>
									
									<div class="field your-name form-group">
									<select  name="domain" required="yes" class="form-control" style="width: 570px;height:60px;">
				<option value="" class="form-control" style="width: 570px;height:60px;">Domain Code</option>
						<%

	String value;
	String name="";
 	Connection connection = null;
 	Statement statement = null;
 	ResultSet resultSet = null;
 	UserDAO userDAO=null;
	DAO dao=DAO.getInstance();
	connection=dao.connector();
	statement = connection.createStatement();
	resultSet = statement.executeQuery("select domain_code,domain_name from m_domain");
		while(resultSet.next())
		{
			value=resultSet.getString(1);
			name=resultSet.getString(2);
			%>
			
			<option value="<%=value%>" style="width: 570px;height:60px;"><%=name%></option>
			<% 
		
		}


	%>

				</select>
				<div class="validation"></div>
									</div>
									
									<div class="field your-name form-group">
				<select  name="subdomain" required="yes" class="form-control" style="width: 570px;height:60px;">
				<option value="" class="form-control" style="width: 570px;height:60px;">Sub Domain Code</option>
						<%

	String sub_code;
 	String sd_name="";
 	UserDAO userDAO1=null;
	DAO dao1=DAO.getInstance();
	connection=dao.connector();
	statement = connection.createStatement();
	resultSet = statement.executeQuery("select sdomain_code,sdomain_name from m_subdomain");
		while(resultSet.next())
		{
			sub_code=resultSet.getString(1);
			sd_name=resultSet.getString(2);
			%>
			
			<option value="<%=sub_code%>" style="width: 570px;height:60px;"><%=sd_name%></option>
			<% 
		
		}


	%>

				</select>
				<div class="validation"></div>
									</div>
									
									<div class="field your-email form-group">
										<input type="text" class="form-control" name="email" id="email" placeholder="Your Email"  />
										<div class="validation"></div>
									</div>
									 <button class="btn btn-theme pull-left">Register</button>
									<!-- <input type="submit" value="Send message" class="btn btn-theme pull-left"> -->
								</div>
							</div>
						</form>
					</div>
				</div>
				<!-- ./span12 -->
			</div>
		</div>
	</section>
	<footer>
		<div class="container">
			<div class="row">
			
				
					<span><b>Email id: </b>info@dhsinformatics.com</span></br>
                 <span><b>Contact No: </b>9886692401</span>
				
			</div>
		</div>
		<!-- ./container -->
	</footer>
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
	<script src="js/jquery.js"></script>
	<script src="js/jquery.scrollTo.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/jquery.localScroll.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/isotope.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/inview.js"></script>
	<script src="js/animate.js"></script>
	<script src="js/custom.js"></script>
	<script src="contactform/contactform.js"></script>

</body>

</html>
