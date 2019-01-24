<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>

     <script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/jquery-1.2.1.min.js"></script>
     <script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/menu.js"></script>
     <link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/login.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath() %>/AllFiles/CSS/style1.css" rel="stylesheet" type="text/css" />
    
    
    <link href='http://fonts.googleapis.com/css?family=Oswald:700' rel='stylesheet' type='text/css'>
	
	<link rel="stylesheet" type="text/css" href="CSS/navigation.css">
	<style type="text/css">
		body {
			background: url("img/sb.jpg");
		}

		.nav {
			top: 200px;
		}
	</style>
	<meta name="robots" content="noindex,follow" />
    
    
    
    
 <style type="text/css">
   li a {display:inline-block;}
   li a {display:block;}
   </style>
   
   <script language="JavaScript">
<!--
  javascript:window.history.forward(-1);
//-->
</script>
</head>
<body>

<%!
       HttpSession session = null;
       String username = "";
       int id = 0;
       UserDAO userDAO = null;
       
%>
<%
      session = request.getSession();

       if(session != null)
       {
    	   username = session.getAttribute("username").toString();
       }
       
      userDAO = UserDAO.getInstance();
      
      id = userDAO.getID1(username);
       
%>

<div 	style="position: centre;  left: -10px;"	>
	
	
	<img src="<%=request.getContextPath() %>/AllFiles/Images/head_Java copy.jpg" width="100%" height="50px" ></img>
</div>




<div style="position:absolute; top: -130px">
	<ul class="nav">
		
		<li>
			<a href="#">Profile</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Profile" target="myIframe">View Profile</a></li>
				<li><a href="<%=request.getContextPath() %>/EditProfile?username=<%=username %>&no=1" target="myIframe">Edit Profile</a></li>
				<li><a href="<%=request.getContextPath() %>/ChangePass?username=<%=username %>&no=1&id=<%=id %>" target="myIframe" target="target">Change Password</a></li>
				<li>
				</ul>
				</li>
				
				
				<li>
			<a href="#">Cloud Server</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/ServerList?submit=get" target="myIframe">View Server Details</a></li>
				<li><a href="<%=request.getContextPath()%>/ServerList?submit=Add" target="myIframe">Add Server Details</a></li>
				<li><a href="<%=request.getContextPath()%>/ServerList?submit=Edit" target="myIframe">Update Server Details</a></li>
				<li>
				</ul>
				</li>
				
				
				
				
				<li>
			<a href="#">Data Owner</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/ListDataOwners?submit=get" target="myIframe">View Data Owner Details</a></li>
				<li><a href="<%=request.getContextPath()%>/ListDataOwners?submit=Add" target="myIframe">Add Data Owner Details</a></li>
				<li><a href="<%=request.getContextPath()%>/ListDataOwners?submit=Edit" target="myIframe">Update Data Owner Details</a></li>
				<li>
				</ul>
				</li>
				
				
				
				
				<li>
			<a href="#">Domain</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/DepartmentList?submit=get" target="myIframe">View Domain</a></li>
				</ul>
				</li>
				
				<li>
			<a href="#">SubDomain</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/DesignationList?submit=get" target="myIframe">View SubDomain</a></li>
			</ul>
		</li>
		
		
		<li>
			<a href="#">Logout</a>
			<ul>
				<li><a href="<%=request.getContextPath()%>/Logout">LogOut</a></li>
			</ul>
		</li>
				
				
				
				
				</ul>
					
</div>







































<div style="position:absolute;top:150px;left:230px;">
	<iframe align="middle" src="<%=request.getContextPath()%>/AllFiles/Images/secure.png" frameborder="0" scrolling="auto" name="myIframe" height="520" width="785"></iframe>
</div>	
</body>
</html>