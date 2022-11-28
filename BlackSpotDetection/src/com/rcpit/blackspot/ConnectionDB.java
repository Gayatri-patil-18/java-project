package com.rcpit.blackspot;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB 
{
	static Connection con=null; 
	public static Connection connect()
	{
		try
		{
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con= DriverManager.getConnection("jdbc:mysql://localhost:3306/blackspotdetection","root","");
				System.out.println("driver loaded");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
		
	}
	
}

