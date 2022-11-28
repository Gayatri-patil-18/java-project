package com.rcpit.blackspot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.blackspot.ConnectionDB;

/**
 * Servlet implementation class AddPolice
 */
public class AddPolice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPolice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response); 
		
		int pid=0;
		String Sname = request.getParameter("Sname");
		String Sadd = request.getParameter("Sadd");
		String Scontact = request.getParameter("Scontact");
		String Semail = request.getParameter("Semail");
	    String Spassword = request.getParameter("Spassword");  
	    
	    try
	    {

	    	Connection con = ConnectionDB.connect();
	    	PreparedStatement ps1= con.prepareStatement("insert into policestation values(?,?,?,?,?,?)"); 
	    	ps1.setInt(1, pid);
	    	ps1.setString(2,Sname);
	    	ps1.setString(3,Sadd); 
	    	ps1.setString(4,Scontact);
	    	ps1.setString(5,Semail); 
	    	ps1.setString(6,Spassword);
	    	int res = ps1.executeUpdate();
	    	if(res>0)
	    	{
	    		response.sendRedirect("policeStation.html");
	    	}
	    	else
	    	{
	    		response.sendRedirect("404.html");
	    	}
	    }
	    catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    
	}

}

	