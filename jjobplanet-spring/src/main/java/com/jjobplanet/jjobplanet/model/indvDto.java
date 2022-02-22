package com.jjobplanet.jjobplanet.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.jjobplanet.jjobplanet.databasemanager.DBManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class indvDto extends DBManager
{	
    Connection conn;	
	DBManager dbms = new DBManager();
    dbms.DBOpen();	
	
	public ArrayList<indvVo> selectAllUser(){
		
		ArrayList<indvVo> alist = new ArrayList<indvVo>();
		
		String sql = "select * from user order by uno asc";
		PreparedStatement pstmt=null;
		ResultSet rs= null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				indvVo uv = new indvVo();				
				uv.setUno(rs.getInt("uno"));
				uv.setUemail(rs.getString("umail"));
				uv.setUpw(rs.getString("upw"));
				alist.add(uv);			
			}						
		} catch (SQLException e) {		
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {				
				e.printStackTrace();
			}
		}		
		return  alist; 

		dbms.DBClose();
	}	
	
	
	public indvVo loginUser(String umail, String upw) {
		indvVo uv = null;
		ResultSet rs = null;
		String sql="select * from user where umail=? and upw=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, umail);
			pstmt.setString(2, upw);
			rs  = pstmt.executeQuery();
			
			if (rs.next()) {
				uv = new indvVo();
				uv.setUemail(rs.getString("umail"));
				uv.setUpw(rs.getString("upw"));
			}			
		} catch (SQLException e) {		e.printStackTrace();	}
		finally {
			//try {	conn.close();	}
			//catch (SQLException e) {	e.printStackTrace();	}
		}		
		return uv;
	}

}