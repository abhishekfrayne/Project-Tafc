package com.action.user;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.PublicKey;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.crypto.SecretKey;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.dao.AdminDAO;
import com.dao.UserDAO;
import com.helperclass.DES_Algorithm;

import com.helperclass.DesEncryption;
import com.helperclass.SerializeToDatabase;
import com.helperclass.Utility;
import com.helperclass.Verify_SecretKey;


public class ReadFile extends HttpServlet
{
	
    ServletInputStream sis=null;
    
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
	  {
		
		
		RequestDispatcher rd = null;
		
		String path="";
		String fileName = "";
		String fName = "";
		String extension="";
		
		String transactionStatus = "";
		
		int fileId = 0;
		AdminDAO adminDAO = AdminDAO.getInstance();
		UserDAO userDAO = UserDAO.getInstance();
		ResultSet rs = null;
		
		HttpSession session = request.getSession();  
		fileId = Integer.parseInt(session.getAttribute("fileId").toString());
		
		String userid = session.getAttribute("userid").toString();
		
		
		//priya new code
		
		Calendar currentDate = Calendar.getInstance();
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
		String date = formatter.format(currentDate.getTime());
		
			
			 Date date1 = new Date();
			    SimpleDateFormat simpDate;

			    simpDate = new SimpleDateFormat("hh:mm:ss");
			    String time1=simpDate.format(date1);
			    System.out.println("12 hrs time>>>>>>"+time1);
			    

			
			    
			    
			    
			    
			    
			    SimpleDateFormat displayFormat = new SimpleDateFormat("HH:mm");
			       SimpleDateFormat parseFormat = new SimpleDateFormat("hh:mm a");
			      // Date date2 = parseFormat.parse(ctime1);
			     //  System.out.println(parseFormat.format(date) + " = " + displayFormat.format(date));
			       
			       time1=displayFormat.format(date1);
			    System.out.println("24 hours time >>>>>>>>>>>>>>>>"+time1);
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			
			
		System.out.println("while downloading Current date::::::::::"+date);
		System.out.println("while downloading Current time::::::::::"+time1);
		
		//start
		//Spliting date details//
		
		String dateParts[] = date.split("-");
	String cyear  = dateParts[0];
		String cmonth  = dateParts[1];
			String cdatee = dateParts[2];
		
			int icyear = Integer.parseInt(cyear);
		
			int icmonth = Integer.parseInt(cmonth);
			int icdate = Integer.parseInt(cdatee);
		System.out.println("current date details in integer format::::::cyear"+cyear+"cmonth"+cmonth+"cdate"+cdatee);
		
	     //spliting time details//
		
			String timeParts[] = time1.split(":");
			String chour  = timeParts[0];
				String cmin  = timeParts[1];
					//String csec = timeParts[2];
				
					int ichour= Integer.parseInt(chour);
				
					int icmin = Integer.parseInt(cmin);
				//	int icsec = Integer.parseInt(csec);
		
					//System.out.println("current time details in integer format:::::chour:"+ichour+"cminutes"+icmin+"cseconds"+icsec);
					
					System.out.println("current time details in integer format:::::chour:"+ichour+"cminutes"+icmin);
					
		//end//
		
		
		String datas = UserDAO.getUserCode(userid);
		
		String[] dr = datas.split("~");
		
		int u_code=Integer.parseInt(dr[0].trim());
		
		int ownerid=Integer.parseInt((String) session.getAttribute("ownerid")) ;
		System.out.println(" ownerid ----------"+ownerid);
		
       
		HttpSession hs = request.getSession(true);
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        response.setHeader("Cache-control", "no-cache");
    
        String err = "";
        String lastFileName = "";
        
       String contentType = request.getContentType();
       String boundary = "";
       
     
       
   	FileItemFactory fileItemFactory = new DiskFileItemFactory();
	ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
	try {

		List fileItems = servletFileUpload.parseRequest(request);

		FileItem file = (FileItem) fileItems.get(0);
		
					
		// Write input File into Upload_Files //
		
		String fileName1 = request.getRealPath("") + "/Files/ReadKey/"+ file.getName();
		
		OutputStream outputStream = new FileOutputStream(fileName1);
		InputStream inputStream = file.getInputStream();

		int readBytes = 0;
		byte[] buffer = new byte[10000];
		while ((readBytes = inputStream.read(buffer, 0, 10000)) != -1)
		{
			outputStream.write(buffer, 0, readBytes);
		}
		outputStream.close();
		inputStream.close();
		
		
	             
	             System.out.println("File ID :"+fileId);
		           
	             System.out.println("Details :"+Integer.parseInt(dr[1].trim())+"------"+Integer.parseInt(dr[2].trim()));
		           
		          // boolean flag=Verify_SecretKey.getAccessCode(Integer.parseInt(dr[1].trim()),Integer.parseInt(dr[2].trim()),fileId,icyear,icmonth,icdate,ichour,icmin,icsec);
		           
	             boolean flag=Verify_SecretKey.getAccessCode(Integer.parseInt(dr[1].trim()),Integer.parseInt(dr[2].trim()),fileId,icyear,icmonth,icdate,ichour,icmin);
	             
		           String s1="88tteehh";
		           String data=ReadIdentyTocken.readfile(fileName1);
		   		
		   		DesEncryption decryption=new DesEncryption(s1);
		   	    
		   		String decrypted = decryption.decrypt(data);
		   		
		   		System.out.println("Decrypted File :"+decrypted);
		   		
		   		String[] keys = decrypted.trim().split("@");
		   		
		   		System.out.println("Length :"+keys.length+"....."+keys[2]+"....."+keys[3]);
		        
		   		String[] k = keys[3].split("#");
		   		
		   		String key1 =k[0].trim();
		   		String key2 =k[1].trim();
		   		
		   		System.out.println(" cvxcvc"+key1+"..."+key2);
		   		
		           if(flag )
				    {
				    	  response.sendRedirect(request.getContextPath()+"/Download?fileid="+fileId+"&ownerid="+ownerid+"&key1="+key1+"&key2="+key2);
				    }
				    else
				    {
				    	rs = adminDAO.getUploadFiles();
				    	
				    	/* Adding Download Transaction To Database(Starts)*/
		            	
		            	transactionStatus = "Denied";
		            	userDAO.addDownloadTransaction(Utility.getDate(),Utility.getTime(),u_code,fileId,Integer.parseInt(dr[1].trim()),Integer.parseInt(dr[2].trim()), transactionStatus);
		        	
		               /* Adding Download Transaction To Database(Ends)*/	
						
						if(rs != null)
						{
							request.setAttribute("rs", rs);
							rd=request.getRequestDispatcher("/AllFiles/JSP/User/download_file.jsp?no=0&no1=1");
							rd.forward(request,response);
						}
				    }
	}
				    
		           
            
      // }
     /*  sis.close();
      buffer.close();
      }*/
      catch (IOException e)
      {
    	  err = e.toString();
      } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	//}
   //}
    
     boolean ok = err.equals("");
     if (!ok)
     {
        out.println(err);
     }
  
     System.out.println("****** Done.......");
    
     /* Forwarding For Key Verification */
     
     //response.sendRedirect(request.getContextPath()+"/VerifyKey?fileid="+fileId+"");
    
    
	}
	  }				
}

