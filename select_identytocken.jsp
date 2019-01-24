<%@page import="com.helperclass.Utility"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao.AdminDAO"%>
<%@page import="com.dao.UserDAO"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%><html>
<head>
	<link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Raleway:100,300,400" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" type="text/css" rel="stylesheet">
        
         <link rel="stylesheet" href="tablecss/tabcss/style.css">
         
         
         <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,600,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/pagenationcss.css" rel="stylesheet">
<script src="<%=request.getContextPath() %>/js/pagenation.js"></script>
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


<!-- <body> -->

<body bgcolor="#949ff1">

<div 	style="position: centre;  left: -10px;"	>
	
	
<center><IMG SRC="<%=request.getContextPath()%>/header.png" style="height:90px;width:950px;"></center>
</div>



<%
	String userid = request.getParameter("username");
String pass = request.getParameter("password");
System.out.println("User ID :"+userid);
System.out.println("Pass :"+pass);

    session.setAttribute("userid",userid);
    session.setAttribute("pass",pass);
    if(Utility.parse(request.getParameter("no"))==0)
	{
%>

<div id="content">
            <div class="container">
                <div class="row margin-vert-30">
                    <div class="col-md-12">
                        <!-- <h2 class="margin-bottom-20"><font color="#000000">Select Identity Tocken Key</font></h2> -->
                       
                        <div class="row">


<div id="a2" style="position:absolute;top:200px;left:40%" class="c">
	<form name="f1" action="<%=request.getContextPath()%>/UserLogin?userid=<%=userid%>&pass=<%=pass %>" method="post" enctype="multipart/form-data">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="#000000" style="font-style: bold" size="5">Select Identity Tocken Key</font></h1>
	    
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
					<input type="submit" class="button" value="Check Identity" onclick="return check();"></input>
			</td>
	    </tr>
	
	</table>
	</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>

	
	<%
		if(Utility.parse(request.getParameter("no1"))==1)
		{
			%>
			
			
			
				<script type="text/javascript">
    
    alert('Opps,Some Thing Went Wrong !')
    
    </script>
			
			
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
		SimpleDateFormat formatter=new SimpleDateFormat("dd-MM-yyyy");
		SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
		String date = formatter.format(currentDate.getTime());
		String time = formatter1.format(currentDate.getTime());
		String username = ""; 
		HttpSession sesion = request.getSession();
		
	   	if(sesion != null)
		{
		  username = (String) session.getAttribute("username");
		}
		   
%>


<div id="content">
            <div class="container">
                <div class="row margin-vert-30">
                    <div class="col-md-12">
                        <h2 class="margin-bottom-20"><font color="#000000">Upload Your File To Cloud</font></h2>
                       
                        <div class="row">




	<div id="a2" style="position:absolute;top:50px;left:50" class="c">
	<table id="login" align="center">
	    
	    <h1 align="center"><font color="green" style="font-style: bold" size="5">File Upload Acknowledgement</font></h1>
	    
		<hr size="10" color="#5E74D8"></hr>
		
		
		<tr  bgcolor="#A9D2FB" align="center">
		
		    <td><font color="white" size="4px">Mr. <%= username %></font> </td>
		    
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
		
		   <td>Date  :  <%= date %>       &       Time  :  <%= time %> </td>
		    
	    </tr>
	    
	</table>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
	

<%
} 
%>
</body>
</html>