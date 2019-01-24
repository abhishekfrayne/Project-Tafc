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
	String subject = request.getParameter("subject");
    session.setAttribute("subject",subject);
    
	String date=request.getParameter("rdate");
	session.setAttribute("date",date);
	String time=request.getParameter("rtime");
	session.setAttribute("time",time);
	
    if(Utility.parse(request.getParameter("no"))==0)
	{
%>

<div id="a2" style="position:absolute;top:50px;left:50px" class="c">
	<form name="f1" action="<%=request.getContextPath()%>/UploadFile" method="post" enctype="multipart/form-data">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="#000000" style="font-style: bold" size="5">Upload Your File To Cloud</font></h1>
	    
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
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
				<div class="error" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Opps,Some Thing Went Wrong !</p>
				</div>
			<%
		}
	%>
<% 	
	}
	if(Utility.parse(request.getParameter("no"))==1)
	{
		String fileName = request.getParameter("file_name");
		String cloud = request.getParameter("cloud");
		Calendar currentDate = Calendar.getInstance();
		/* SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy");
		SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
		String date = formatter.format(currentDate.getTime());
		String time = formatter1.format(currentDate.getTime()); */
		
		
		
		String rdate=(String) session.getAttribute("date");
		  System.out.println("rdate in select file:"+rdate);
	String rtime=(String) session.getAttribute("time");
		  System.out.println("rtime in select file:"+rtime);
		
		
		
		String username = ""; 
		HttpSession sesion = request.getSession();
		
	   	if(sesion != null)
		{
		  username = (String) session.getAttribute("username");
		}
		   
%>

	<div id="a2" style="position:absolute;top:50px;left:50" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="green" style="font-style: bold" size="5">File Upload Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td><font color="white" size="4px">Ms. <%= username %></font> </td>
		    
	    </tr>
		
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="red">Your File has been Uploaded Successfully......</font></pre></td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		
		    <td><pre><font color="white" size="5"><%=cloud%></font></pre></td>
		    
	    </tr>
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		   <td>File Name  :  <%=fileName %> </td>
		    
	    </tr>
	    
	    <tr  bgcolor="#A9D2FB" align="center">
		<%-- 
		   <td>Date  :  <%= date %>       &       Time  :  <%= time %> </td>
		    --%>
		    <td>Release Date  :  <%= rdate %>       &      Release Time  :  <%= rtime %> </td>
		    
		    
	    </tr>
	    
	</table>
	</div>

<%
} 
%>
</body>
</html>