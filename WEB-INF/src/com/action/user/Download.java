/**
 * 
 */
package com.action.user;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.action.dataowner.Process;
import com.dao.AdminDAO;
import com.dao.UserDAO;
import com.helperclass.ConversionProcess;
import com.helperclass.DesEncryption;
import com.helperclass.FileDownload;

import com.helperclass.SerializeToDatabase;
import com.helperclass.SupportFileDownload;
import com.helperclass.Utility;


public class Download extends HttpServlet
{
	
	public void service(HttpServletRequest req,HttpServletResponse res)throws IOException
	{
		 ResultSet rs = null; 
		  String username = "";
		  int userId = 0;
		  int deptId = 0;
		  int designationId = 0;
		  int cloudId = 0;
		  int fileid=0;
		  int totalNumberOfClouds = 0;
		  String fileName="";
		  String transactionStatus = "";
		  
		  String downloadDir = "";
		  String fileType="";
		  
		  UserDAO userDAO = UserDAO.getInstance();
		  AdminDAO adminDAO = AdminDAO.getInstance();
		  
		  RequestDispatcher rd=null;
		  
		  HttpSession session = req.getSession();  
		  username = (String) session.getAttribute("username");
		  userId = userDAO.getID1(username);
		  deptId = userDAO.getDepartmentID(username);
      	  designationId = userDAO.getDesignationID(username);
		
		  fileid = Integer.parseInt(req.getParameter("fileid").toString());
		  int ownerid = Integer.parseInt(req.getParameter("ownerid"));
		  
		  String key1 = req.getParameter("key1");
		  String key2 = req.getParameter("key2");
		  
		  System.out.println("Key :"+key1+"Key 2 "+key2);
		  
		  
		  
		  
		  System.out.println("Owner Id --------------- 99999 :"+ownerid);
		
		  String url = adminDAO.getCloud();
		  
		  String di = url.substring(url.trim().length()-6);
		  
		  System.out.println("url====================:"+di);
		  
		  
		  
		  rs = adminDAO.getUploadFiles1(fileid);
	     if(rs != null)
	     {
	    	try 
	    	{
	    		while(rs.next())
	    		{
	    			fileName = rs.getString(2);
	    			cloudId = rs.getInt(6);
	    			fileType=rs.getString(3);
	    		}
				
			} catch (Exception e) 
			{
				// TODO: handle exception
			}
	     }
		 
		  //for(int i=1;i<=totalNumberOfClouds;i++)
	     // {
	        	//if(cloudId == i)
		       // {
	        		downloadDir = di.trim();
		        //}
	     // }
		  
		  /*//downloadDir = "cloud1";
		  downloadDir = "cloud1";*/
		 
	       if ( session.getAttribute( "waitPage" ) == null ) 
	       {  
	    	   session.setAttribute( "waitPage", Boolean.TRUE );  
	    	   PrintWriter out = res.getWriter();  
	    	   out.println( "<html><head>" );  
	    	   out.println( "<title>Please Wait...</title>" );  
	       	   out.println( "<meta http-equiv=\"Refresh\" content=\"0\">" );  
	    	   out.println( "</head><body bgcolor='#949ff1'>" );  
	    	   out.println( "<br>" );
	    	   out.println( "<center>" );
	    	   out.print("<font color='red'>");
	    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
	    	   out.println("</font>");
	    	   out.print("<font color='green'>");
	    	   out.println( "Please,Wait..........<br>  " );
	    	   out.println( "Download Athentication In Process..." );
	    	   out.println( "<br>" );
	    	   out.println("</font>");
	    	   out.println( "<br>" );
	    	   out.print( "<img src='AllFiles/Images/status_processing.gif'></img><br><br>");
	    	   out.print("<font color='geen'>");
	    	   out.println( "Please Do not press Back or Refresh button.......<br>  " );
	    	   out.println( "<br>" );
	    	   out.println( "Downloading is in process..." );
	    	   out.println( "<br>" );
	    	   out.println( "The File is being decrypted...." );
	    	   out.println("</font>");
	    	   out.println( "<br>" );
	    	   out.println( "Please wait....</h1></center");  
	    	   out.close();  
	       }  
	       else 
	       { 
		    	session.removeAttribute( "waitPage" );  
				try
				{
					PrintWriter out=res.getWriter();
					res.setContentType("text/html");
					
					boolean flag = false;
					
					
					String dwn_file_path = req.getRealPath("") + "/Files/Download/"+fileName;
					String ftpserver = "ftp.drivehq.com";
			        String ftpusername = "blrstore1";
			        String ftppassword = "*blrstore123";
			        downloadDir="cloud1";
			      String filepath=FileDownload.download(ftpserver, ftpusername, ftppassword, downloadDir, fileName,dwn_file_path);
			      //  String filepath =  req.getRealPath("") +"\\Files\\Upload\\enc1_"+fileName;
			      
			        // Read Downloded File Content Starts //
			      
			        FileInputStream stream3=new FileInputStream(filepath);
		        	DataInputStream in1 = new DataInputStream(stream3);
		            BufferedReader br3 = new BufferedReader(new InputStreamReader(in1));
		            StringBuffer sb3 = new StringBuffer();
		    		String strLine3;
		    		
		    		while ((strLine3 = br3.readLine()) != null) 	
		    		{
		    			sb3.append(strLine3.trim());
		    			System.out.println("strLine3 :"+strLine3);
		    		}
		    		String data3=sb3.toString().trim();
			        
		    		
		    		// Read Downloded File Content ends //
		    		
			      
		    		// Decryption By Using DES Alg Starts //
		    		
		            System.out.println("  username :"+username);	
		    		
		            	//String DESKey=userDAO.getDESKeyFromDB("do_key2",ownerid);
						DesEncryption encrypter=new DesEncryption(key2);
						
						
						System.out.println("  final output : "+data3.trim());
						String decrypted = encrypter.decrypt(data3.trim());
						
						// Decryption By Using DES Alg Ends //
						
						
						
						// Write Decrypted Data From DES Starts//
					
						String DES_DecryptFilePath = req.getRealPath("")+"\\Files\\Decrypt\\DES_Dec.txt";
						 
					        FileOutputStream stream=new FileOutputStream(DES_DecryptFilePath);
					        stream.write(decrypted.trim().getBytes());
					        stream.flush();
					        stream.close();
					        
						System.out.println("  ------------- Decrypt data from DES :"+DES_DecryptFilePath);
						
						 // Write Decrypted Data From DES Ends//
						
						
						// **************** Decryption By Using RNS Starts ********//
						
						String onekey="",twokey="";
						String RNSKey=key1.trim();
			        	
			        	String[] rnsKey1=RNSKey.split("~");
			        	
			        	
			        	for(int s=0;s<rnsKey1.length;s++)
			        	{
			        		onekey=rnsKey1[0].trim();
			        		twokey=rnsKey1[1].trim();
			        	}
			      
			        			// Read Decrypted Data From DES Starts//
			        	
			        	FileInputStream stream1=new FileInputStream(DES_DecryptFilePath);
			        	DataInputStream in = new DataInputStream(stream1);
			            BufferedReader br1 = new BufferedReader(new InputStreamReader(in));
			            StringBuffer sb2 = new StringBuffer();
			    		String strLine1;
			    		
			    		while ((strLine1 = br1.readLine()) != null) 	
			    		{
			    			sb2.append(strLine1.trim());
			    			//System.out.println(sb1);
			    		}
			    		String data1=sb2.toString();
			    		
			    			//  Read Decrypted Data From DES Ends//
			    		
			    		
			    		System.out.println("----"+data1);
			    		String ext = fileName.substring(fileName.indexOf("."));
			        	System.out.println(" Extention :"+ext);
			        	
			        	String decrpt_file_path = req.getRealPath("")+"\\Files\\Decrypt\\"+fileName;
			        	
			        	
			        	String RNS_DecryptedData=Process.decryptMessage(data1.trim(),fileName, onekey, twokey,decrpt_file_path);
			        	
			        		// *********** Decryption By Using RNS Ends *********//
			        	
						
		            	/* Decrypting the downloaded File(Ends) */
						
			            	
			            /* Adding Download Transaction To Database(Starts)*/
			            	
			            	transactionStatus = "Allowed";
			            	userDAO.addDownloadTransaction(Utility.getDate(),Utility.getTime(),userId,fileid,deptId,designationId, transactionStatus);
			            	
			            	
			           
			            	res.sendRedirect(req.getContextPath()+"/Pass?fileNames="+decrpt_file_path+"&download=true");
			    			
			            	
			            	
			            	/* Adding Download Transaction To Database(Ends)*/	
						//rd=req.getRequestDispatcher("/AllFiles/JSP/User/download_file.jsp?no=1&fname="+fileName+"&dfrom="+downloadDir+"");
						//rd.forward(req, res);
					
					
							
				}
				catch(Exception e)
				{
					System.out.println(e);
				}
	       }
}	
}
