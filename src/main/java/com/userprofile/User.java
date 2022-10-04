package com.userprofile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
	
	String userName,userDateOFBirth,userMobile,userEmail;
	static JdbcConnection db=new JdbcConnection();

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserDateOFBirth() {
		return userDateOFBirth;
	}

	public void setUserDateOFBirth(String userDateOFBirth) {
		this.userDateOFBirth = userDateOFBirth;
	}

	public String getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(String userMobile) {
		this.userMobile = userMobile;
	}
	
	void addUser(User user, String password) throws ClassNotFoundException, SQLException
	{
	
		 Connection connection=db.connect();
		 String sql="insert into \"userDetails\"(username,password) values(?,?)";
		 PreparedStatement statement=connection.prepareStatement(sql);
		 statement.setString(1,user.getUserName());
		 statement.setString(2,password);
		 statement.execute();
		 
		 		 
		 
	}
	public static Boolean uservalidation(String username, String password) throws SQLException, ClassNotFoundException {
		   Boolean valid=false;
		   Connection Connection=db.connect();
	  	   PreparedStatement ps=Connection.prepareStatement("select username,password from \"userDetails\"");
	  	   ResultSet rs=ps.executeQuery();
	  	   while(rs.next())
	  	   {
	  		  
	  		   if(username.equals(rs.getString(1)) && password.equals(rs.getString(2)))
	  		   {
	  			 valid=true;
	  			 
	  		   }
	  	   }
	  	   
			


			return valid;
		}
	
	public static User userdetails(String username) throws ClassNotFoundException, SQLException
	{
		User user=new User();
		String sql="select username,dob,mobile,email from \"userDetails\" where username=?";
		Connection connection=db.connect();
		{
			PreparedStatement ps=connection.prepareStatement(sql);
			ps.setString(1,username);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			user.setUserName(rs.getString(1));
			user.setUserDateOFBirth(rs.getString(2));
			user.setUserMobile(rs.getString(3));
			user.setUserEmail(rs.getString(4));
			}
		}
		
		return user;
		
	}
    static void updateDetails(User user,String username) throws SQLException, ClassNotFoundException
    {
    	Connection connection=db.connect();
    	String sql="update \"userDetails\" set email=?,mobile=?,dob=? where username=?";
    	PreparedStatement ps=connection.prepareStatement(sql);
    	ps.setString(1,user.getUserEmail());
    	ps.setString(2,user.getUserMobile());
    	ps.setString(3,user.getUserDateOFBirth());
    	ps.setString(4,username);
    	ps.executeUpdate();
    }

}
