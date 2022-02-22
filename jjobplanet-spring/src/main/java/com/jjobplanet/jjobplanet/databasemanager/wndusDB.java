package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;


@WebServlet("/joinOk.do")
public class wndusDB extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String umail = request.getParameter("umail");
		String upw  = request.getParameter("upw");
	
		String host   = "jdbc:mysql://127.0.0.1:3306/jjobdb?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "root";
		String passwd = "ezen";
		
		PrintWriter out = response.getWriter();
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{			
			String sql = "insert into user (umail, upw) values "
					   + "('" + umail + "', md5('" + upw + "')) ";
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
			
		
	}
}
