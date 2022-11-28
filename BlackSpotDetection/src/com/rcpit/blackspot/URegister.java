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
 * Servlet implementation class URegister
 */
public class URegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegister() {
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
		int Id=0;
		String Name = request.getParameter("Name");
		String Email = request.getParameter("Email");
		String Mobile = request.getParameter("Mobile");
		String Password = request.getParameter("Password");
	    String City = request.getParameter("City");  
	    
	    try
	    {

	    	Connection con = ConnectionDB.connect();
	    	PreparedStatement ps2= con.prepareStatement("insert into users values(?,?,?,?,?,?)"); 
	    	ps2.setInt(1, Id);
	    	ps2.setString(2,Name);
	    	ps2.setString(3,Email); 
	    	ps2.setString(4,Mobile);
	    	ps2.setString(5,Password);
	    	ps2.setString(6,City);
	    	int res = ps2.executeUpdate();
	    	if(res>0)
	    	{
	    		response.sendRedirect("RegisterView.html");
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
