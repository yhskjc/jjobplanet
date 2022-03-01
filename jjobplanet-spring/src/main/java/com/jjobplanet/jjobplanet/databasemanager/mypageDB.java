package com.jjobplanet.jjobplanet.databasemanager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.jdbc.ConnectionGroupManager;

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
            stmt.close();		
		} catch (Exception e) {
			e.printStackTrace();
			
			 object.put("result", "FAIL");
		}
       
        
    }
    public mypageDB(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

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
            sql  = "select * from user";
            System.out.println("SQL:" + sql);
            ResultSet result = stmt.executeQuery(sql);
           
            while(result.next())
			{
                 ugender = request.getParameter("ugender");
                 ubirth = request.getParameter("ubirth");
                 ujob = request.getParameter("ujob");
                 ucareer = request.getParameter("ucareer");

                HttpSession session = request.getSession();
				session.setAttribute("ugender",ugender);
				session.setAttribute("ubirth",ubirth);
				session.setAttribute("ujob",ujob);
				session.setAttribute("ucareer",ucareer);
                
            }


        }catch (Exception e) 
		{
			e.printStackTrace();
		}
   
 
 }

}


    

