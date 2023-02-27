package com.signup;

import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 

// This class can be used to initialize the database connection 
public class DatabaseConnection { 
	protected static Connection initializeDatabase() 
		throws SQLException, ClassNotFoundException 
	{ 
		// Initialize all the information regarding 
		// Database Connection 
		String dbDriver = "com.mysql.jdbc.Driver"; 
		String url="jdbc:mysql://localhost:3306/emp_management_sys";
	
		String dbUsername = "root"; 
		String dbPassword = ""; 

		Class.forName(dbDriver); 
		Connection con = DriverManager.getConnection(url, 
													dbUsername, 
													dbPassword); 
		return con; 
	} 
} 
