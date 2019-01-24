<%@page import="com.helperclass.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.AdminDAO"%>
<html>
<head>
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/style.js"></script>

</head>
<!-- <body onload="startTimer()"> -->
<body bgcolor="#949ff1">

<%
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0;
	String username="",name="",email="";
	
	while(rs.next())
	{
		id=rs.getInt(1);
		name=rs.getString(2);
		username=rs.getString(4);
		email=rs.getString(5);
		
	}

	if(no==1)
	{
%>
			<div class="error" id="message" style="position:absolute;top:225px;left:300px">		
				<p>Opp's,Seems something went wrong ..!</p>
			</div>
<%
	}
	else if(no==0)
	{
%>
			<br>
			<div align="right" style="position:absolute;top:40px;left:375px">
				<a class="gradientbuttons" href="<%=request.getContextPath() %>/EditOwnerProfile?username=<%=username %>&no=1">Edit Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangeOwnerPassword?no=1&id=<%=id %>" target="myIframe">Change Password</a>
			</div>
			<br>
			<div id="a2" align="right" style="position:absolute;top:70px;left:25px">
			
				<p>
				
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#000000" style="font-style: bold" size="5">Data Owner Profile Details</font>
									</td>
									
							</tr>
							
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px">Owner ID No</td>
									<td width="50px">:</td>
									<td> <%=id %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Owner Id</td>
									<td >:</td>
									<td> <%=name %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Owner Name</td>
									<td>:</td>
									<td> <%=username %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							
							
							<tr>
									<td>Owner Email  </td>
									<td>:</td>
									<td>  <%=email %></td>
							</tr>
					</table>
				</p>
				
				
			</div>
		<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Your profile updated successfully ..!</p>
				</div>
			<%
		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Your Password updated successfully ..!</p>
				</div>
			<%
		}
	}
	else if(no==2)
	{
%>


<!-- Display Contents (Starts) -->

					<form id="login" action="<%=request.getContextPath() %>/EditOwnerProfile?no=2">
					<input type="hidden" name="admin" value="<%=username %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					<div align="right" style="position:absolute;top:30px;left:375px">
						<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="gradientbuttons" href="<%=request.getContextPath() %>/ChangeOwnerPassword?no=1&id=<%=id %>" target="myIframe">Change Password</a>
					</div>
					<br></br>
					<div id="a2" align="right" style="position:absolute;top:70px;left:25px">
						
						<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#000000" style="font-style: bold" size="5">Edit Owner Profile Details</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px">Owner ID No</td>
									<td width="50px">:</td>
									<td> <%=id %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Owner ID</td>
									<td >:</td>
									<td> 
										<input class="field" type="text" name="name" value="<%=name %>" required="yes"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Owner Name</td>
									<td>:</td>
									<td> <%=username %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Owner Mail ID </td>
									<td>:</td>
									<td>
										<input class="field" type="email" name="email" value="<%=email %>"  required="yes"></input>
									</td>
							</tr>
							
							
							
					</table>
				</p>
						
		</div>
</form>

<!-- Display Contents (Ends) -->
<%
}
	else if(no==3)
	{
%>
      <form id="login" action="<%=request.getContextPath() %>/ChangeOwnerPassword?no=2">
		<input type="hidden" name="admin" value="<%=username %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		<div align="right" style="position:absolute;top:40px;left:375px">
			<a class="gradientbuttons" href="<%=request.getContextPath() %>/EditOwnerProfile?no=1">Edit Profile</a>
			<input type="submit" value="Save Updates" class="gradientbuttons"/>&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		<br></br>
		
		<div id="a2" align="right" style="position:absolute;top:80px;left:25px">
				<p>
					<table>
							<tr>
									<td colspan="3" align="center">
									<font color="#000000" style="font-style: bold" size="5">Change Password</font>
									</td>
							</tr>
							
							<tr>
									<td colspan="3" align="center"><hr></hr></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td width="200px">Owner ID No</td>
									<td width="50px">:</td>
									<td> <%=id %></td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Current Password</td>
									<td >:</td>
									<td> 
										<input class="field" type="password" name="pass" required="yes"/>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>New Password</td>
									<td>:</td>
									<td>
										<input class="field" type="password" name="npass" required="yes"></input>
									</td>
							</tr>
							
							<tr>
									<td>&nbsp;</td>
							</tr>
							
							<tr>
									<td>Confirm new password   </td>
									<td>:</td>
									<td> 
										<input class="field" type="password" name="cpass" required="yes"></input>
									</td>
							</tr>
							
					</table>
				</p>
		</div>
	</form>

<%
	if(Utility.parse(request.getParameter("no1"))==1)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
				<p>Opp's,your current password is wrong ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
				<p>Opp's,your new password do not match with confirm password ..!</p>
			</div>
		<%
	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		%>
			<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
				<p>Opp's,Seems something went wrong....!</p>
			</div>
		<%
	}
}
%>
</body>
</html>


