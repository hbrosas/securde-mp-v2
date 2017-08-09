package edu.securde.DbPool;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

public class DbPool{
	public static final String schema = "dlsulibdb";
	public static final String username = "root";
	public static final String password = "p@ssword";
	public static final String url = "jdbc:mysql://localhost:3306/";
	public static final String driver = "com.mysql.jdbc.Driver";
	
	// an instance of itself
	private static DbPool singleton = null;
	
	private static BasicDataSource basicDataSource;
	
	// private constructor
	private DbPool() {
		// TODO: initialize DB connection
		basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		basicDataSource.setUrl(url + schema);	
	}
	
	// getInstance
	public static DbPool getInstance() {
		if (singleton == null) {
			singleton = new DbPool();
		}
		
		return singleton;
	}
	
	public Connection getConnection() {
		try {
			return basicDataSource.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
}

