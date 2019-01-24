package com.helperclass;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import com.action.user.ReadIdentyTocken;
import com.dao.UserDAO;

public class Verify_SecretKey {
	
	
	
	//public static boolean getAccessCode( int udomain,int usdomain, int fileId,int year,int month,int date,int hour,int min, int sec) throws ParseException
	
	public static boolean getAccessCode( int udomain,int usdomain, int fileId,int year,int month,int date,int hour,int min) throws ParseException
	
	{

		String domain_de="";
		String e_date="";
		
		String domain_code1="";
		String sdomain_code1="";
		String cdate="";
		String ctime="";
		String key1="";
		String key2="";
		String rns_des_key="";
		
		
		
		String domain_code="",sdomain_code="";
		
		int userId=0,deptCode1=0,deptCode2=0,designCode1=0,designCode2=0;
		UserDAO userDAO1 = UserDAO.getInstance();
		
		
		
		
		//priya code//
		

		Calendar currentDate = Calendar.getInstance();
		SimpleDateFormat formatter=new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat formatter1=new SimpleDateFormat("HH:mm:ss");
		 cdate = formatter.format(currentDate.getTime());
		System.out.println("Current date is >>>>>>>>>>>>>>>>"+cdate);
		
		
		
		
		
			 Date date1 = new Date();
			    SimpleDateFormat simpDate;

			    simpDate = new SimpleDateFormat("hh:mm:ss");
			    String ctime1=simpDate.format(date1);
			   System.out.println("12 hour time>>>>>>"+ctime1);
			
			    
			    
			    
			    
			    
			    SimpleDateFormat displayFormat = new SimpleDateFormat("HH:mm");
			       SimpleDateFormat parseFormat = new SimpleDateFormat("hh:mm a");
			      // Date date2 = parseFormat.parse(ctime1);
			     //  System.out.println(parseFormat.format(date) + " = " + displayFormat.format(date));
			       
			   ctime1=displayFormat.format(date1);
			    System.out.println("24 hours time >>>>>>>>>>>>>>>>"+ctime1);
			    
			    
			    
			    
			   
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			    
			
		System.out.println("while verify Current date::::::::::"+cdate);
		System.out.println("while verify Current time::::::::::"+ctime1);
		
		
		
		String dateParts[] = cdate.split("-");
		String cyear  = dateParts[0];
	  String cmonth  = dateParts[1];
     	String cdatee = dateParts[2];

		System.out.println("current date values is: ::"+cyear+""+cmonth+""+cdatee);
		
		
		
		
		
		String timeParts[] = ctime1.split(":");
		String chour  = timeParts[0];
	  String cmin  = timeParts[1];
     //	String csec = timeParts[2];

		//System.out.println("current time values is:::"+hour+""+min+""+sec);
		
	  System.out.println("current time values is:::"+hour+""+min);
		
		  int icdatey = Integer.parseInt(cyear);
			int icdatem = Integer.parseInt(cmonth);
			int icdates = Integer.parseInt(cdatee);
		    
		System.out.println("current integer date values:::::cyear:::"+icdatey+"cmonth"+icdatem+"cdate"+icdates); 
	    //end// 
	    
		int ictimeh = Integer.parseInt(chour);
		int ictimem = Integer.parseInt(cmin);
	//	int ictimes = Integer.parseInt(csec);
		   
		//System.out.println("current integer time values::::::chour::"+ictimeh+"cminutes"+ictimem+"cseconds"+ictimes); 
		System.out.println("current integer time values::::::chour::"+ictimeh+"cminutes"+ictimem); 
	
		//end//
		
		
		
		System.out.println("++++++++++++++++++++++++++++++++++++++= "+udomain+"."+usdomain);
		
		
		//boolean f = Verify_SecretKey.checkAccess(udomain,usdomain,fileId,e_date,icdatey,icdatem,icdates,ictimeh,ictimem,ictimes);
		
		boolean f = Verify_SecretKey.checkAccess(udomain,usdomain,fileId,e_date,icdatey,icdatem,icdates,ictimeh,ictimem);
		System.out.println("Status :"+f);
		
		return f;
		
	}
	
	//public static boolean checkAccess(int d_code,int sd_code,int fileid,String edate,int icdatey,int icdatem,int icdates,int ictimeh,int ictimem,int ictimes)
	
	public static boolean checkAccess(int d_code,int sd_code,int fileid,String edate,int icdatey,int icdatem,int icdates,int ictimeh,int ictimem)
	
	
	{
		boolean flg = false;
		UserDAO userDAO1 = UserDAO.getInstance();
		
		int acc_dcode=0;
		int acc_sdcode=0;
		String rdate="";
		String rtime="";
		
		acc_dcode=userDAO1.getAccess_Code(fileid);
		acc_sdcode=userDAO1.getAccess_DCode(fileid);
		rdate=userDAO1.getAccess_rdate(fileid).toString();
		rtime=userDAO1.getAccess_rtime(fileid).toString();
		
		System.out.println("Access Domain Code :"+acc_dcode);
		System.out.println("Access SubDomain Code :"+acc_sdcode);
		System.out.println("Access rdate :"+rdate);
		System.out.println("Access rtime :"+rtime);
		
		
	   
	    //start//
		//release date spliting//
		
		String rdateParts[] = rdate.split("-");
		String ryear  = rdateParts[0];
	  String rmonth  = rdateParts[1];
     	String rdatee = rdateParts[2];

		System.out.println("relase date values is:::"+ryear+""+rmonth+""+rdatee);
		
		
		
		//release time spliting
		
		String rtimeParts[] = rtime.split(":");
		String rhour  = rtimeParts[0];
	  String rmin  = rtimeParts[1];
     //	String rsec = rtimeParts[2];

		//System.out.println("release time values is:::"+rhour+""+rmin+""+rsec);
	  
	  System.out.println("release time values is:::"+rhour+""+rmin+"");
		
	    //release date in integer type
	    
		int irdateyr = Integer.parseInt(ryear);
		int irdatemth = Integer.parseInt(rmonth);
		int irdated = Integer.parseInt(rdatee);
		 
		    System.out.println("release integer date values::::::ryear::"+irdateyr+"rmonth"+irdatemth+"rdate"+irdated); 
			
		    //release time in integer type
	    
		    int irtimehr = Integer.parseInt(rhour);
			int irtimemin = Integer.parseInt(rmin);
			//int irtimesec = Integer.parseInt(rsec);
		    
			//System.out.println("release time values is::rhour:"+irtimehr+"rminutes"+irtimemin+"rseconds"+irtimesec);
			System.out.println("release time values is::rhour:"+irtimehr+"rminutes"+irtimemin+"rseconds");
		
		//end//
			//domain condition//
			
			System.out.println("Final Domain condition:::::::"+(d_code == acc_dcode));
			
			//subdomain condition//
			System.out.println("Final SubDomain condition:::::::"+(sd_code == acc_sdcode));
			
			//year condition//
			System.out.println("Final Year condition:::::::"+(icdatey==irdateyr));
			//month condition//
			System.out.println("Final Month condition:::::::"+(icdatem==irdatemth));
			
			//date condition//
			System.out.println("Final Date condition:::::::"+(icdates==irdated));
			//hour condition//
			System.out.println("Final Hour condition:::::::"+(ictimeh>=irtimehr));
			
			//minute condition//
			
			System.out.println("Final Minute condition:::::::"+(ictimem>=irtimemin));
			
			
			
			
				//if((d_code == acc_dcode) && (sd_code == acc_sdcode)&&(icdatey==irdateyr)&&(icdatem==irdatemth)&&(icdates==irdated)&&(ictimeh>=irtimehr)&&(ictimem>=irtimemin))
					
			if((d_code == acc_dcode) && (sd_code == acc_sdcode)&&(icdatey==irdateyr)&&(icdatem==irdatemth)&&(icdates==irdated)&&(ictimeh>=irtimehr))
			
			{
				System.out.println("User Can to Download File----");
				//flg=true;
				
			//}
			
			//if((icdatey==irdateyr)&&(icdatem==irdatemth)&&(icdates==irdated)&&(ictimeh<=irtimehr)&&(ictimem<=irtimemin)&&(ictimes<=irtimesec))
			//{
				flg=true;
				System.out.println("::::::flag value is:::::::::"+flg);
			}
		//}
			else 
			{
				System.out.println("else part");
			}
		
		return flg;
		
		
	}

}
