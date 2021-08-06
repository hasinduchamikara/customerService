package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {

	private static String url = "jdbc:mysql://localhost:3306/customerservice";
	private static String user = "root";
	private static String psw = "Mysql";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, psw);
			
		}catch(Exception e) {
			System.out.println("DB is not successful");
		}
		
		return con;
	}
}
