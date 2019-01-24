<%@page import="com.helperclass.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.AdminDAO"%><html>
<head>
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/button.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/AllFiles/CSS/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/style.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/AllFiles/JS/pagination.js"></script>
	


<script language="javascript">
	


	
</script>

</head>
<!-- <body onload="startTimer()"> -->
<body bgcolor="#949ff1">
<%
    AdminDAO adminDAO = null;
    adminDAO = AdminDAO.getInstance();
    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    int id=0,deptId1=0,deptId2=0,designId1=0,designId2=0;
	String username="",password="",name="",city="",mobile="",doj="",address="",email="",phone="";
	
	
	if(no==1)
	{
%>	

<form action="<%=request.getContextPath()%>">
<div align="right" style="position:absolute;top:20px;left:450px">
	
</div>

<div id="a3" align="right" style="position:absolute;top:60px;left:2px;width: 650px;height: 350px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="650px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#000000" style="font-style: bold" size="5">User Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>Select</th>
			<th>UserId</th>
			<th>Identity </th>
			<th>Secret File </th>
			
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			username=rs.getString(2);
			name=rs.getString(3);
			
%>
			<tr align="center">
				<td><input name="chk" type="checkbox" value="<%=id%>"></td>
						<td><%=username%></td>
						<td><%=name%></td>
						<td><a href="<%=request.getContextPath()%>/AllFiles/JSP/User/select_expirydate.jsp?userid=<%=username %>&identity=<%=name%>" >Send</a></td>
						
			</tr>
			
			
			
<%
		}
    }
	}

%>
  	 </table>
  	
   </div>
 </form>
 <div id="pageNavPosition" style="position:absolute;top:420px;left:550px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
 
 <%
		if(Utility.parse(request.getParameter("no"))==0)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Secret Key File Sented successfully ..!</p>
				</div>
			<%
		}
		
		if(Utility.parse(request.getParameter("no"))==2)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Error,To sending Secret File,..</p>
				</div>
			<%
		}
	
		if(Utility.parse(request.getParameter("no"))==3)
		{
			%>
				<div class="success" id="message" style="position:absolute;top:5px;left:50px">	
					<p>Invalid Identity Tocken,....!</p>
				</div>
			<%
		}
	%>
   
</body>
</html>


