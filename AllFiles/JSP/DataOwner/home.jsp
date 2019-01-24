
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.dao.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="<%=request.getContextPath()%>/css/menu.css" rel="stylesheet" type="text/css" />
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
      System.out.println("Owner Id"+id);
       
%>

<style type="text/css">

    body 
    {
      background-image:url('bg.jpg');
    
        background-repeat: no-repeat;
    }

</style>

</head>


<body >

<center><IMG SRC="<%=request.getContextPath()%>/header.png" style="height:90px;width:950px;"></center>

<div class="container">
<nav class="menu animated flipInX">

		<ul class="ul">
   
 
 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">Profile</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/OwnerProfile" target="myIframe">
				<h3>View Profile</h3>
				
			</a>
</div>



<div class ="link">      
			<a class="a" href="<%=request.getContextPath() %>/EditOwnerProfile?username=<%=username %>&no=1" target="myIframe">
				<h3>Edit Profile</h3>
				
			</a>
</div>






<div class ="link">      
			<a class="a" href="<%=request.getContextPath() %>/ChangeOwnerPassword?no=1&id=<%=id %>" target="myIframe" target="myIframe">
				<h3>Change Password</h3>
				
			</a>
</div>









 
 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">Users</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/ListUser?submit=get" target="myIframe">
				<h3>View User Details</h3>
				
			</a>
</div>



 <div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">View Request</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/ViewRequest" target="myIframe">
				<h3>View User Request</h3>
				
			</a>
</div>

<div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">File Upload</font></h4>
 </div>

<div class ="link">      
			<a class="a" href="<%=request.getContextPath()%>/AllFiles/JSP/Admin/upload_file.jsp" target="myIframe">
				<h3>Upload File</h3>
				
			</a>
</div>



<div class ="link">      
			<a class="a" href="<%=request.getContextPath()%>/UploadFileList?submit=get" target="myIframe">
				<h3>View Details</h3>
				
			</a>
</div>


<div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">File Access Control</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/AllFiles/JSP/Admin/access_control.jsp" target="myIframe">
				<h3>Control File Access</h3>
				
			</a>
</div>
<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/AccessFileControlList?submit=get"  target="myIframe">
				<h3>View Access Control </h3>
				
			</a>
</div>

<div class ="link">    
 <h4><font style="font-family: monotype corsiva;font-size: 25px;">Transactions</font></h4>
 </div>

<div class ="link">      
			<a class="a"  href="<%=request.getContextPath()%>/UploadFileList?submit=get" target="myIframe">
				<h3>View Transactions</h3>
				
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
	frameborder="0" scrolling="auto" name="myIframe" height="930px" width="800px"></iframe>
</div>
	
	
	
	
	
	
</body>
</html>