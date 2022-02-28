package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.json.JSONObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.web.servlet.mvc.support.RedirectAttributes;

public class mypageDB 
{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws SQLException {

        String ugender = request.getParameter("ugender");
        String ubirth = request.getParameter("ubirth");
        String ujob = request.getParameter("ujob");
        String ucareer = request.getParameter("ucareer");

        String host   = "jdbc:mariadb://cm4ng.iptime.org:3307/jjobplanet?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";
		String userid = "yhskjc1";
		String passwd = "yang7128";

        JSONObject object = new JSONObject();
        
        try(Connection conn =  DriverManager.getConnection(host,userid,passwd);
			Statement stmt = conn.createStatement()) 
		{	
            String sql = "";
            sql  = "insert into user ( ugender, ubirth, ujob, ucareer) ";
            sql += "value ('"+ ugender +"' , '"+ubirth+"' , '"+ ujob + "' , '"+ ucareer +"') ";
            System.out.println("SQL:" + sql);
			stmt.executeUpdate(sql);
			object.put("result", "OK");			
			
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
    }
    public class Member {

        private String ugebder;
        private String ubirth;
        private String ujob;
        private String ucareer;
    
        public String getUgebder() {
            return this.ugebder;
        }
    
        public void setUgebder(String ugebder) {
            this.ugebder = ugebder;
        }
    
        public String getUbirth() {
            return this.ubirth;
        }
    
        public void setUbirth(String ubirth) {
            this.ubirth = ubirth;
        }
    
        public String getUjob() {
            return this.ujob;
        }
    
        public void setUjob(String ujob) {
            this.ujob = ujob;
        }
    
        public String getUcareer() {
            return this.ucareer;
        }
    
        public void setUcareer(String ucareer) {
            this.ucareer = ucareer;
        }
        
    }
    
 
 }
    

