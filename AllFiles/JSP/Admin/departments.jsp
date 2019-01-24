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

</head>
<!-- <body onload="startTimer()"> -->
<body bgcolor="#949ff1">
<%
    int no=Utility.parse(request.getParameter("no"));
    
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0;
	String deptName;
	
	AdminDAO adminDAO = AdminDAO.getInstance();
	
%>	

<div id="a3" align="right" style="position:absolute;top:50px;left:25px;width: 600px;height: 300px;">
			
<p>

	<table id="results" class="tab" border="1" cellpadding="5px" cellspacing="4px" width="600px">
		
		<tr>
			
			<td colspan="6" align="center">
			<font color="#000000" style="font-style: bold;font-family: monotype corsiva" size="6">Domain Details</font>
			</td>
									
		</tr>
							
		
		<tr>
			<th>Domain ID</th>
			<th>Domain Name</th>
		</tr>

<% 
	
    if(rs != null)
    {
	    while(rs.next())
		{
			id=rs.getInt(1);
			deptName=rs.getString(2);
			
%>
			<tr align="center">
						<td><%=id%></td>
						<td><%=deptName%></td>
			</tr>
<%
		}
    
}
%>
  	 </table>
  	 </p>
   </div>
 </form>
   

<div id="pageNavPosition" style="position:absolute;top:350px;left:550px"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results',6); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>

</body>
</html>


