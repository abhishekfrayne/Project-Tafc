/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2018-05-02 17:49:11 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.AllFiles.JSP.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.helperclass.Utility;
import java.sql.ResultSet;
import com.dao.AdminDAO;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/AllFiles/CSS/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/AllFiles/CSS/message.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/AllFiles/CSS/button.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/AllFiles/CSS/login.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/AllFiles/JS/style.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<!-- <body onload=\"startTimer()\"> -->\r\n");
      out.write("<body bgcolor=\"#949ff1\">\r\n");

    int no=Utility.parse(request.getParameter("no"));
    ResultSet rs=(ResultSet)request.getAttribute("rs");
    int id=0;
	String username="",name="",add="",email="",phone="";
	
	while(rs.next())
	{
		id=rs.getInt(1);
		username=rs.getString(4);
		name=rs.getString(2);
		add=rs.getString(5);
		email=rs.getString(7);
		phone=rs.getString(6);
	}

	if(no==1)
	{

      out.write("\r\n");
      out.write("\t\t\t<div class=\"error\" id=\"message\" style=\"position:absolute;top:225px;left:300px\">\t\t\r\n");
      out.write("\t\t\t\t<p>Opp's,Seems something went wrong ..!</p>\r\n");
      out.write("\t\t\t</div>\r\n");

	}
	else if(no==0)
	{

      out.write("\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div align=\"right\" style=\"position:absolute;top:40px;left:375px\">\r\n");
      out.write("\t\t\t\t<a class=\"gradientbuttons\" href=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile?username=");
      out.print(username );
      out.write("&no=1\">Edit Profile</a>&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t<a class=\"gradientbuttons\" href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass?username=");
      out.print(username );
      out.write("&no=1&id=");
      out.print(id );
      out.write("\" target=\"myIframe\">Change Password</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<br>\r\n");
      out.write("\t\t\t<div id=\"a2\" align=\"right\" style=\"position:absolute;top:70px;left:25px\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"#000000\" style=\"font-style: bold;font-family: Monotype corsiva;\" size=\"6\">Admin Profile</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\"><hr></hr></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"200px\">Your ID No</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"50px\">:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(id );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Name</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td >:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(name );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your User ID</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(username );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Mail ID </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(email );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Cell N0  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(phone );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Address  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>  ");
      out.print(add );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

		if(Utility.parse(request.getParameter("no1"))==1)
		{
			
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"success\" id=\"message\" style=\"position:absolute;top:5px;left:50px\">\t\r\n");
      out.write("\t\t\t\t\t<p>Your profile updated successfully ..!</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t");

		}
		
		if(Utility.parse(request.getParameter("no1"))==2)
		{
			
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"success\" id=\"message\" style=\"position:absolute;top:5px;left:50px\">\t\r\n");
      out.write("\t\t\t\t\t<p>Your Password updated successfully ..!</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t");

		}
	}
	else if(no==2)
	{

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Display Contents (Starts) -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<form id=\"login\" action=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile?no=2\">\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"admin\" value=\"");
      out.print(username );
      out.write("\"></input>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"no\" value=\"2\"></input>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(id );
      out.write("\"></input>\r\n");
      out.write("\t\t\t\t\t<div align=\"right\" style=\"position:absolute;top:30px;left:375px\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Save Updates\" class=\"gradientbuttons\"/>&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t\t<a class=\"gradientbuttons\" href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass?username=");
      out.print(username );
      out.write("&no=1&id=");
      out.print(id );
      out.write("\" target=\"myIframe\">Change Password</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<br></br>\r\n");
      out.write("\t\t\t\t\t<div id=\"a2\" align=\"right\" style=\"position:absolute;top:70px;left:25px\">\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"#000000\" style=\"font-style: bold;font-family: monotype corsiva\" size=\"6\">Edit Admin Profile </font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\"><hr></hr></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"200px\">Your ID No</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"50px\">:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(id );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Name</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td >:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"text\" name=\"name\" value=\"");
      out.print(name );
      out.write("\" ></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your User ID</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(username );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Mail ID </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"email\" name=\"email\" value=\"");
      out.print(email );
      out.write("\" required=\"yes\"></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Cell No  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"text\" name=\"phone\" value=\"");
      out.print(phone );
      out.write("\" pattern=\"[0-9]{10}\" required=\"yes\"></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Your Address  </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"text\" name=\"add\" value=\"");
      out.print(add );
      out.write("\"  ></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<!-- Display Contents (Ends) -->\r\n");

}
	else if(no==3)
	{

      out.write("\r\n");
      out.write("      <form id=\"login\" action=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass?no=2\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"admin\" value=\"");
      out.print(username );
      out.write("\"></input>\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(id );
      out.write("\"></input>\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"no\" value=\"2\"></input>\r\n");
      out.write("\t\t<div align=\"right\" style=\"position:absolute;top:40px;left:375px\">\r\n");
      out.write("\t\t\t<a class=\"gradientbuttons\" href=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile?username=");
      out.print(username);
      out.write("&no=1\">Edit Profile</a>\r\n");
      out.write("\t\t\t<input type=\"submit\" value=\"Save Updates\" class=\"gradientbuttons\"/>&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<br></br>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div id=\"a2\" align=\"right\" style=\"position:absolute;top:80px;left:25px\">\r\n");
      out.write("\t\t\t\t<p>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<font color=\"#000000\" style=\"font-style: bold;font-family: monotype corsiva\" size=\"6\">Change Password</font>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td colspan=\"3\" align=\"center\"><hr></hr></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"200px\">Your ID No</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td width=\"50px\">:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> ");
      out.print(id );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Current Password</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td >:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"password\" name=\"pass\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>New Password</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"password\" name=\"npass\" required=\"yes\"></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>&nbsp;</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>Confirm new password   </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>:</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<input class=\"field\" type=\"password\" name=\"cpass\"></input>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("\r\n");

	if(Utility.parse(request.getParameter("no1"))==1)
	{
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"error\" id=\"message\" style=\"position:absolute;top:5px;left:50px\">\t\r\n");
      out.write("\t\t\t\t<p>Opp's,your current password is wrong ..!</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

	}
	if(Utility.parse(request.getParameter("no1"))==2)
	{
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"error\" id=\"message\" style=\"position:absolute;top:5px;left:50px\">\t\r\n");
      out.write("\t\t\t\t<p>Opp's,your new password do not match with confirm password ..!</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

	}
	if(Utility.parse(request.getParameter("no1"))==3)
	{
		
      out.write("\r\n");
      out.write("\t\t\t<div class=\"error\" id=\"message\" style=\"position:absolute;top:5px;left:50px\">\t\r\n");
      out.write("\t\t\t\t<p>Opp's,Seems something went wrong....!</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t");

	}
}

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
