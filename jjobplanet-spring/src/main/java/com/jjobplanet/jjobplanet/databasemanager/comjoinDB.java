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

public class comjoinDB
{

	public void doComjoin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String cmail = request.getParameter("cmail");
		String cpw  = request.getParameter("cpw");
		String cname = request.getParameter("cname");
		String ccategory  = request.getParameter("ccategory");
		String csize = request.getParameter("csize");
		String ceoname  = request.getParameter("ceoname");
		String cinsurance = request.getParameter("cinsurance");
		String caddress  = request.getParameter("caddress");
		String cnumber = request.getParameter("cnumber");
		String cworkers  = request.getParameter("cworkers");
		String cdate  = request.getParameter("cdate");
		String cmaintask  = request.getParameter("cmaintask");
		String chomepage  = request.getParameter("chomepage");


		String host   = "jdbc:mysql://127.0.0.1:3306/jjobdb?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "root";
		String passwd = "ezen";
		
		PrintWriter out = response.getWriter();
		JSONObject object = new JSONObject();
		
		try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
			String sql = "insert into company (cmail, cpw, cname, csize, ccategory, ceoname, cinsurance, caddress, cnumber, cworkers, cdate,  cmaintask, chomepage) values "
					   + "('" + cmail + "',md5('" + cpw + "'),'" + cname +"','" + csize +"','" + ccategory +"','" + ceoname +"','" + cinsurance +"','" + caddress +"','" + cnumber +"','" + cworkers +"','" + cdate +"','" + cmaintask +"','" + chomepage +"')";
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
	}
}
