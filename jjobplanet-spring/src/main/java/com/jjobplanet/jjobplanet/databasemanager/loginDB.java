package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class loginDB
{

	public void doLogin(HttpServletRequest request,  RedirectAttributes setAttribute) throws ServletException, IOException {
    	

		
		String umail = request.getParameter("umail");
		String upw  = request.getParameter("upw");
	
		String host   = "jdbc:mysql://127.0.0.1:3306/jjobdb?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "root";
		String passwd = "ezen";
		
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "";
			sql  = "select uno,umail ";
			sql += "from user ";
			sql += "where uamil = '" + umail + "' ";
			sql += "and upw = md5('" + upw + "') ";
			sql += "and uretire = 'N' ";
			System.out.println("SQL:" + sql);
			ResultSet result = stmt.executeQuery(sql);
			if(result.next() == false)
			{					
				
			}else
			{
				String uno   = result.getString("uno");

				HttpSession session = request.getSession();
				session.setAttribute("uno",uno);
				session.setAttribute("umail",umail);
				session.setAttribute("upaw",upw);
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
}
