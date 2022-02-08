package com.elorrieta.HelloDataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BDUtil {

	
	final static String URL_CONEXIO = "jdbc:mysql://localhost:3306/garajebd?&useSSL=false";
	final static String USUARIO = "root";
	final static String PASSWORD = "root";

	
	public static final Connection getConnection() throws SQLException {
		
		return DriverManager.getConnection(URL_CONEXIO, USUARIO, PASSWORD);
	}
}
