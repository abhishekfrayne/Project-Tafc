<%@page import="com.helperclass.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.AdminDAO"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%><html>
<head>
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/pagination.js"></script>
</head>

<script language="javascript">
	function check()
	{
		if(document.f1.file.value.length==0)
		{
			alert("Please Select a File");
			return false
		}
		else
		{
			return true;
		}
	}
</script>

<!-- <body onload="startTimer()"> -->

<body bgcolor="#949ff1">
<%
	String userid = request.getParameter("username");
    session.setAttribute("userid",userid);
    if(Utility.parse(request.getParameter("no"))==0)
	{
%>

<div id="a2" style="position:absolute;top:50px;left:50px" class="c">
	<form name="f1" action="<%=request.getContextPath()%>/UploadRequest?userid=<%=userid %>" method="post" enctype="multipart/form-data">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="#000000" style="font-style: bold" size="5">Upload Identity Token  File</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		<tr>
				<td>&nbsp;</td>
		</tr>
	    
		<tr id="label" align="center">
		    
			<td align="center" colspan="3">
				
					<input type="file" class="field2" name="file" required="required" width="150px"></input>
				
			</td>
		</tr>
		
		<tr>
				<td>&nbsp;</td>
		</tr>
		
		
		<tr>
				<td>&nbsp;</td>
		</tr>
		
		<tr align="center">
			<td align="center" colspan="3">
					<input type="submit" class="button" value="Upload File" onclick="return check();"></input>
			</td>
	    </tr>
	
	</table>
	</form>
	</div>
	
<%
	}
%>

<%
		if(Utility.parse(request.getParameter("no"))==7)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Identity Token Uploaded Successfully,..</p>
				</div>
			<%
		}
	%>
	
	<%
		if(Utility.parse(request.getParameter("no"))==1)
		{
			%>
				<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Please Select Correct Identity Tocken,.</p>
				</div>
			<%
		}
	%>
	
</body>
</html>