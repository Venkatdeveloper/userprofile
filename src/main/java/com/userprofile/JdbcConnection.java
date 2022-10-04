package com.userprofile;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
	 Connection c = null;

    Connection connect() throws ClassNotFoundException
    {
    	Class.forName("org.postgresql.Driver");
        try {
    		c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/UserProfile","postgres", "yaso4456");
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    	return c;

    }
    void addUser()
    {
    	
    }
}
