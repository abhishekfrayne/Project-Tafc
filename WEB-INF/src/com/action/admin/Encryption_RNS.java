package com.action.admin;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.security.PublicKey;

import javax.crypto.Cipher;

public class Encryption_RNS 
{
	public static String encryptMessage1(byte[] v,String key1,String key2,String localFilePath1) throws IOException
	{
		String c="";
		FileOutputStream fos = null;
			
			 for(int i=0;i<v.length;i++)
			  {
				 c = c + Encry(v[i],key1,key2) + "#";
				 
				 
			  }
			 FileOutputStream fileOut1;
				try 
				{
					fileOut1 = new FileOutputStream(localFilePath1);
					
					fileOut1.write(c.getBytes());
					fileOut1.flush();
					fileOut1.close();
					
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 
		System.out.println("------C Value------"+c);	
		return c;
    }
	public static String Encry(int a,String key1,String key2)
	  {
		 
		  int m1=Integer.parseInt(key1);
		  int m2=Integer.parseInt(key2);
		
		 		  
		 int r1=a%m1;
		 int r2=a%m2;
		 System.out.println("str1"+r1);
		 System.out.println("str2"+r2);
		 String str=r1+"_"+r2;
		 System.out.println("str"+str);
		   
		return str;
   }
	/*public static void Encrypfile(String sourcefile, String destfile,String key1, String key2) 
	{
		OutputStream outputWriter = null;
		InputStream inputReader = null;
		
		outputWriter = new FileOutputStream(destfile.trim());
		inputReader = new FileInputStream(sourcefile.trim());
		while ( (bufl = inputReader.read(buf)) != -1)
		{
			
			byte[] encText = null;
			if (cipherMode == Cipher.ENCRYPT_MODE)
				encText = encrypt(copyBytes(buf,bufl),(PublicKey)key);
			
			System.out.println("encText ----------- "+encText);
			outputWriter.write(encText);
		}
		outputWriter.flush();
		
		
		
	}*/
}
