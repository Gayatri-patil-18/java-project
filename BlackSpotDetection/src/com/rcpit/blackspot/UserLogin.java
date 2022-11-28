package com.rcpit.blackspot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLogin
 */
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		
		String Email = request.getParameter("Email");
	    String Password = request.getParameter("Password");
	    
	    try
	    {
	    	Connection con = ConnectionDB.connect();
	    	PreparedStatement ps1= con.prepareStatement("select * from users where Email=? and Password=?");
	    	ps1.setString(1,Email);
	    	ps1.setString(2,Password);
	    	ResultSet rs = ps1.executeQuery();
	    	if(rs.next())
	    	{
	    		response.sendRedirect("UserView.html");
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