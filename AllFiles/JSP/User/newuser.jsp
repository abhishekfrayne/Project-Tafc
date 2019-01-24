<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="com.dao.DAO"%>
<%@page import="java.sql.*"%>
<html>
<%! 
public int convert(String str) 
{ 
	int conv=0; 
	if(str==null) 
	{ 
		str="0"; 
	} 
	else if((str.trim()).equals("null")) 
	{ 
		str="0"; 
	} 
	else if(str.equals("")) 
	{ 
		str="0"; 
	} 
	try
	{ 
		conv=Integer.parseInt(str); 
	} 
	catch(Exception e) 
	{ 
	} 
	return conv; 
	
} 
%>
<head>
<title>Admin Login Page</title>

<link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="<%=request.getContextPath() %>/AllFiles/JS/style.js"></script>


<!-- STYLE -->

<style>
#login {
	margin: 5em auto;
	background: #E2A037;
	border: 10px solid #F5F5DC;
	width: 450px;
	height: 520px;
	align: center;
	text-align: center;
	position: absolute;
	left: 300px
}

#login a,#login a:visited {
	color: #0283b2;
}

#login a:hover {
	color: #111;
}

#login h1 {
	color: #5BACC4;
	text-shadow: #007dab 0 2px 0;
	font-size: 14px;
	padding: 18px 23px;
	margin: 0 0 1.5em 0;
	border-bottom: 1px solid #007dab;
}

#login .field {
	border: 5px solid #F5F5DC;
	color: black;
	width: 200px;
	font-size: 12px;
	line-height: 1.5em;
	padding: 4px;
	-moz-box-shadow: inset 0 0 5px #ccc;
	-webkit-box-shadow: inset 0 0 5px #ccc;
	box-shadow: inset 0 0 50px #E2A037;
}

#login div.submit label {
	float: none;
	display: inline;
	font-size: 11px;
}

#login button {
	border: 0;
	padding: 0 30px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	font-size: 12px;
	color: #fff;
	text-shadow: #007dab 0 1px 0;
	background: #424242;
	-moz-border-radius: 50px;
	-webkit-border-radius: 50px;
	border-radius: 50px;
	cursor: pointer;
}
</style>

<script language="javascript">
	function check()
	{
		if(document.f1.username.value.length==0 && document.f1.password.value.length==0)
		{
			window.location.href = 'index.jsp?no=1';
			return false
		}
		if(document.f1.username.value.length==0)
		{
			window.location.href = 'index.jsp?no=2';
			return false
		}
		if(document.f1.password.value.length==0)
		{
			window.location.href = 'index.jsp?no=3';
			return false
		}
	}
	
</script>
</head>


<%
	int no=convert(request.getParameter("no"));
	if(no==1)
	{
		    
%>
<div class="error" id="message"
	style="position: absolute; top: 130px; left: 530px">
	<p>Enter Username and Password !</p>
</div>

<%
	}
	if(no==2)
	{
%>
<div class="error" id="message"
	style="position: absolute; top: 130px; left: 530px">
	<p>Please,Enter Your Username.!</p>
</div>
<%
	}
	if(no==3)
	{
%>
<div class="error" id="message"
	style="position: absolute; top: 130px; left: 530px">
	<p>Please,Enter Your Password.!</p>
</div>
<%
	}
%>
<%
	if(no==4)
	{
%>
<div class="error" id="message"
	style="position: absolute; top: 130px; left: 530px">
	<p>Sorry,Invalid Username/Password!</p>
</div>
<%
	}
%>
<%
	if(no==5)
	{
%>

<div class="success" id="message"
	style="position: absolute; top: 130px; left: 500px">
	<p id="message">You have Logged out successfully...!</p>
</div>

<%
	}
%>


<!-- <body onload="startTimer()"> -->
<body bgcolor="#949ff1">
	<img
		src="<%=request.getContextPath() %>/AllFiles/Images/head_Java copy.jpg"
		width="1024" height="-1"></img>




	<div id="a2" align="right"
		style="position: absolute; top: 50px; left: 25px">

		<p>
		<table id="login" align="center">

			<form action="<%=request.getContextPath()%>/NewUser" method="post">


				<tr>
					<td colspan="7" align="center"><font color="#000000"
						style="font-style: bold; font-family: monotype corsiva" size="6">User
							Registration</font></td>
				</tr>

				<tr>
					<td colspan="3" align="center"><hr></hr></td>
				</tr>
			<tr align="center">
				<td width="175px">User Id</td>
				<td width="75px">:</td>
				<td width="200px"><input class="field" type="text" name="userid"
					required="yes" placeholder="Enter Your Id"></input></td>
			</tr>



			<tr align="center">
				<td>Password</td>
				<td>:</td>
				<td><input class="field" type="password" name="password"
					required="yes" placeholder="Enter Your Password"></input></td>
			</tr>



			<tr align="center">
				<td>Name</td>
				<td>:</td>
				<td><input class="field" type="text" name="name"
					required="yes"  placeholder="Enter Your Name"></input></td>
			</tr>



			<tr align="center" >
				<td>Domain</td>
				<td>:</td>
				<td><select class="field" name="domain" required="yes" >
				<option value="">Domain Code</option>
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
			
			<option value="<%=value%>" ><%=name%></option>
			<% 
		
		}


	%>

						
						

				</select></td>
			</tr>


			<tr align="center">
				<td>SubDomain</td>
				<td>:</td>
				<td><select class="field" name="subdomain" required="yes">
				<option value="">Sub Domain Code</option>
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
			
			<option value="<%=sub_code%>" style="width: 300px;"><%=sd_name%></option>
			<% 
		
		}


	%>

						
				</select></td>
			</tr>

			<tr align="center">
				<td>UserEmail</td>
				<td>:</td>
				<td><input class="field" type="email" name="email" required="yes" placeholder="Enter Your Email" pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></input></td>
			</tr>




			<tr align="center">
				<td colspan="3" align="center"><input class="button"
					type="submit" value="Register"></input></td>
			</tr>
			</form>
		</table>
		</p>

	</div>




	<div style="position: absolute; top: 200px; left: 50px"></div>
	<div>
		<iframe name="a" width="0" height="0"></iframe>
	</div>
</body>
</html>