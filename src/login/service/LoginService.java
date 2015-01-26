package login.service;

import java.sql.*;
import login.user.User;

public class LoginService {
	
	private Connection myConn;
	private Statement myStmt;
	private ResultSet myRs;
	
	public LoginService() {
		connect();
	}
	
	
	/**
	 * connect to RDS database
	 */
	public void connect() {
		String dbName = "AppData"; 
		String userName = "webapp"; 
		String password = "webapptest"; 
		String hostname = "webapp.csbne4wol8wq.us-east-1.rds.amazonaws.com";
		String port = "3306";
		
		String jdbcUrl = "jdbc:mysql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;

		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver ());


			// 1. Get a connection to database
			myConn = DriverManager.getConnection(jdbcUrl);
			
			// 2. Create statement
			myStmt = myConn.createStatement();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	
	/**
	 * Authenticate userId and password
	 * @param userId
	 * @param password
	 * @return
	 */
	public boolean authenticate(String username, String password) {
		
		int count=0;
		
		try {
			
			String sql ="SELECT * FROM users WHERE UserName='"+username+"' AND Password='"+password+"'";

			// Execute SQL query
			myRs = myStmt.executeQuery(sql);
			
			while(myRs.next()) {
				count++;
			}	
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		if (count==1) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * Pull user data using username and create user object
	 * @param username
	 * @return
	 */
	public User getUserDetails(String username) {
		
		User user = new User();

		try {
			String sql = "SELECT * FROM users WHERE Username='"+username+"'";
			myRs = myStmt.executeQuery(sql);
			
			while(myRs.next()){
				user.setFirstName(myRs.getString("FirstName"));
				user.setLastName(myRs.getString("LastName"));
				user.setUsername(myRs.getString("UserName"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return user;
	}


}


