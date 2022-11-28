package com.rcpit.blackspot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rcpit.blackspot.ConnectionDB;

/**
 * Servlet implementation class Admin
 */
public class policelogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public policelogin() {
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
		String Semail = request.getParameter("Semail");
	    String Spassword = request.getParameter("Spassword");
	    
	    try
	    {
	    	Connection con = ConnectionDB.connect();
	    	PreparedStatement ps1= con.prepareStatement("select * from policestation where Semail=? and Spassword=?");
	    	ps1.setString(1,Semail);
	    	ps1.setString(2,Spassword);
	    	ResultSet rs = ps1.executeQuery();
	    	if(rs.next())
	    	{
	    		response.sendRedirect("addBlackSpots.html");
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
