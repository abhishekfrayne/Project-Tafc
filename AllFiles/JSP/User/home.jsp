
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="<%=request.getContextPath()%>/css/menu.css" rel="stylesheet" type="text/css" />
 

<style type="text/css">

    body 
    {
      background-image:url('bg.jpg');
    
        background-repeat: no-repeat;
    }

</style>

</head>


<body >

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

<center><IMG SRC="<%=request.getContextPath()%>/header.png" style="height:90px;width:950px;"></center>

<div class="container">
<nav class="menu animated flipInX">

		<ul class="ul">
   
 
 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">Profile</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/UserProfile?username=<%=username %>&no=0" target="myIframe">
				<h3>View Profile</h3>
				
			</a>
</div>



<div class ="link">      
			<a class="a" href="<%=request.getContextPath() %>/EditUserProfile?username=<%=username %>&no=1" target="myIframe">
				<h3>Edit Profile</h3>
				
			</a>
</div>






<div class ="link">      
			<a class="a" href="<%=request.getContextPath() %>/ChangeUserPassword?username=<%=username %>&no=2&id=<%=id %>" target="myIframe">
				<h3>Change Password</h3>
				
			</a>
</div>









 
 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">Request Secret File</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/AllFiles/JSP/User/select_file.jsp?username=<%=username %>" target="myIframe">
				<h3>Upload Identity Tocken</h3>
				
			</a>
</div>



 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">File Download</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/DownloadFiles" target="myIframe">
				<h3>Download File</h3>
				
			</a>
</div>


<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/Logout" >
				<h3>Logout</h3>
				
			</a>
</div>


		</ul>
	</nav>
</div>



<div style="position:absolute;top:130px;left:300px;">
	<iframe align="middle"  style="margin-left: 60px;" 
	frameborder="0" scrolling="auto" name="myIframe" height="500px" width="700px"></iframe>
</div>
	
	
	
	
	
	
</body>
</html>