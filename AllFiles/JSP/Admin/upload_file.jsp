
<%@page import="com.dao.AdminDAO"%>
<%@page import="com.helperclass.Utility"%><html>
<head>
<title>Generate Key</title>

	<link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/pagination.js"></script>
</head>

<!-- <body onload="startTimer()"> -->

<body bgcolor="#949ff1">
<%
	AdminDAO adminDAO = AdminDAO.getInstance();
    
%>

<div id="a3" align="right" style="position:absolute;top:50px;left:50px">
						
		 <p>
			
					
				<form action="<%=request.getContextPath()%>/AllFiles/JSP/Admin/select_file.jsp">
					
					<table id="login" align="center">
					<tr>
							<td colspan="7" align="center">
								<font color="#000000" style="font-style: bold" size="5">Upload File</font>
							</td>
					</tr>
					
					<tr>
							<td colspan="3" align="center"><hr></hr></td>
					</tr>
					
					<tr>
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td width="200px">Subject </td>
							<td width="75px">:</td>
							<td width="200px">
								<input type="text" class="field" name="subject" required="yes" style="width: 300px;height:40px;">
							</td>
							
					</tr>
					<tr align="center">
							<td width="200px">Release Date </td>
							<td width="75px">:</td>
							<td width="200px">
								<input type="date" class="field" name="rdate" required="yes" style="width: 300px;height:40px;">
							</td>
							
					</tr>
					<tr align="center">
							<td width="200px">Release Time </td>
							<td width="75px">:</td>
							<td width="200px">
								<input type="time" class="field" name="rtime" required="yes" style="width: 300px;height:40px;">
							</td>
							
					</tr>
					
					<tr align="center">
							<td>&nbsp;</td>
					</tr>
					
					<tr align="center">
							<td colspan="7" align="center">
								<input class="button" type="submit"  value="Select File"></input>
							</td>
					</tr>
					
					</table>
			</form>
			
		</p>
						
</div>


</body>
</html>