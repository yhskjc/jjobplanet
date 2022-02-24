package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

public class passwordchangeDB {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		String upw  = request.getParameter("upw");
	
		String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "yhskjc1";
		String passwd = "ynag7128";
		
		PrintWriter out = response.getWriter();
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "update user set upw =mp5('" + upw + "')) 
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
	}
    
}
