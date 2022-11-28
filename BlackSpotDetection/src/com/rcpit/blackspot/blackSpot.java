package com.rcpit.blackspot;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class blackSpot
 */
public class blackSpot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public blackSpot() {
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
		int bid=0;
		String Lname = request.getParameter("Lname");
		String Add = request.getParameter("Add");
		String Reason = request.getParameter("Reason");
		String Latitude = request.getParameter("Latitude");
		String Longitude = request.getParameter("Longitude"); 
		int Level = Integer.parseInt(request.getParameter("Level"));
		String City = request.getParameter("City");
	    
	    
	    try
	    {

	    	Connection con = ConnectionDB.connect();
	    	PreparedStatement ps1= con.prepareStatement("insert into blackspot values(?,?,?,?,?,?,?,?)"); 
	    	ps1.setInt(1,bid);
	    	ps1.setString(2,Lname);
	    	ps1.setString(3,Add);
	    	ps1.setString(4,Reason); 
	    	ps1.setString(5,Latitude);
	    	ps1.setString(6,Longitude); 
	    	ps1.setInt(7,Level);
	    	ps1.setString(8,City);
	    	int res = ps1.executeUpdate();
	    	if(res>0)
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
	