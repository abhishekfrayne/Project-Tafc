package com.action.dataowner;



import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.action.user.CL_SendMail;
import com.dao.AdminDAO;
import com.dao.UserDAO;
import com.helperclass.DesEncryption;
import com.helperclass.Utility;



public class Send_SecretFile extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out=response.getWriter();
		ResultSet rs = null;
		RequestDispatcher rd=null;
		HttpSession session = request.getSession();;
		boolean result = false;
		
		String key1="";
		String key2="";
		
		String domain="";
		String sdomain="";
		
		String email="";
		
		String file_path="";
		
		String rns_des_key="";
		String domain_subdomain_code="";
		String e_date =request.getParameter("date");
		String userid1=request.getParameter("userid");
		
		String uidentity=request.getParameter("identity");
		
		System.out.println("Expiry Date :"+e_date);
		System.out.println("UserId in se:"+userid1);
		try
		{
			
			String idei = UserDAO.getIdentity(userid1);
			
			if(uidentity.trim().equals(idei.trim()))
			{

				String ownerid =session.getAttribute("username").toString();
				
				UserDAO userDAO = UserDAO.getInstance();
				
				key1=userDAO.getRNSKeyFromDB1(ownerid);
				key2=userDAO.getDESKeyFromDB1(ownerid);
				
				rns_des_key=""+key1+"#"+key2;
				
				System.out.println("Keys :"+rns_des_key);
				
				domain=userDAO.getDomain_Code(userid1);
				sdomain=userDAO.getSDomain_Code(userid1);
				
				//domain_subdomain_code=""+domain+"$"+sdomain;
				
				//System.out.println("Details :"+domain_subdomain_code);
				
				String data=""+domain+"@"+sdomain+"@"+e_date+"@"+rns_des_key;
				
				System.out.println("Data For Encryption-----"+data);
				
				email=userDAO.getEmail(userid1);
				
				System.out.println("Email Address :"+email);
				
				// Encryption Getting Start By Using DES Aplgorithm //
				
				String s="88tteehh";
				
				DesEncryption encryption=new DesEncryption(s);
			    
				String encrypted = encryption.encrypt(data);
				
				file_path = request.getRealPath("") +"\\Files\\SecretFile\\SecretKey.txt";
				
				FileWriter fstream = new FileWriter(file_path);
				
				BufferedWriter out1 = new BufferedWriter(fstream);

		        out1.write(encrypted);
		        out1.close();
				
		        File f = new File(file_path);
		        
		        String fnm = f.getName();
				// Sending Encrypted File To User //
	        	
				 boolean sendMailflag=CL_SendMail.sendPersonalizedMail(email, "deduplication8@gmail.com", "Indian123", "Download Secret Key File", "Secret Key File", file_path, "smtp.gmail.com", "465",fnm);			
				 System.out.println("Mail Status :"+sendMailflag);
				// Encryption Getting End By Using DES Aplgorithm //
				if(sendMailflag)
				{
					rd=request.getRequestDispatcher("/AllFiles/JSP/DataOwner/viewrequest.jsp?no=0");
					rd.forward(request, response);
				}
				else
				{
					rd=request.getRequestDispatcher("/AllFiles/JSP/DataOwner/viewrequest.jsp?no=2");
					rd.forward(request, response);
				}
					
			}
			else
			{
				
				rd=request.getRequestDispatcher("/AllFiles/JSP/DataOwner/viewrequest.jsp?no=3");
				rd.forward(request, response);
			}
			
			
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in Admin ListUser Servlet : ");
			e.printStackTrace();
			out.println("Opps's Error is in Admin ListUser Servlet......"+e);
		}
	}
}
