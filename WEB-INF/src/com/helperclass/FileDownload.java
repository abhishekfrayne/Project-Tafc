/**
 * 
 */
package com.helperclass;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Properties;

import javax.crypto.SecretKey;

import com.action.dataowner.Process;
import com.dao.UserDAO;


public class FileDownload 
{
	public static String download( String ftpServer, String ftpuser, String ftppassword,String downloadDir,String fileName,String dwnpath) throws MalformedURLException,
	         IOException
	   {
		   boolean flag=false;
		   String s="";
		   String filename1="";
		 //  String dir =null;
		  
		   String dir="";
		   
	      if (ftpServer != null && fileName != null )
	      {
	         StringBuffer sb = new StringBuffer( "ftp://" );
	         // check for authentication else assume its anonymous access.
	         if (ftpuser != null && ftppassword != null)
	         {
	            sb.append( ftpuser );
	            sb.append( ':' );
	            sb.append( ftppassword );
	            sb.append( '@' );
	         }
	         sb.append( ftpServer );
	         sb.append( '/' );
	         sb.append( downloadDir );
	         sb.append( '/' );
	         sb.append( fileName );
	         
	         /*
	          * type ==> a=ASCII mode, i=image (binary) mode, d= file directory
	          * listing
	          */
	         sb.append( ";type=i" );
	         System.out.println("   url  :"+sb.toString());
		       
	         BufferedInputStream bis = null;
	         BufferedOutputStream bos = null;
	        
	         try
	         {
	        	 URL url = new URL(sb.toString());
		            URLConnection urlc = url.openConnection();
		            
		            dir=dwnpath;
		            
		            System.out.println("Dir : "+dir);
		            File f = new File(dir);
		           
		            bis = new BufferedInputStream( urlc.getInputStream());
		            bos = new BufferedOutputStream( new FileOutputStream(dir) );

		            
		            int i;
		            while ((i = bis.read()) != -1)
		            {
		               bos.write( i );
		               flag=true;
		            }
		            
		            //System.out.println("Encrypted File Downloaded from Cloud CVS(Amutha) Successfully ========");
		            if(flag==true)
		            {
		            	//UserDAOImpl.deleteFile(fileName);
		            }
	          }
	         catch (Exception e)
	         {
				System.out.println("Opps,Exception in FileDownload Servlet :");
				e.printStackTrace();
			 }
	         finally
	         {
	            if (bis != null)
	               try
	               {
	                  bis.close();
	               }
	               catch (IOException ioe)
	               {
	                  ioe.printStackTrace();
	               }
	            if (bos != null)
	               try
	               {
	                  bos.close();
	               }
	               catch (IOException ioe)
	               {
	                  ioe.printStackTrace();
	               }
	         }
	      }
	      else
	      {
	         System.out.println( "Input not available" );
	      }
	      return dir;
	   }
}
