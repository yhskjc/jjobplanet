package com.jjobplanet.jjobplanet.databasemanager;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.boot.autoconfigure.amqp.RabbitProperties.Cache.Connection;

public class wndusDB
{
	Connection conn = null;
	PreparedStatement  pstmt = null;
	ResultSet rs = null;

	String host = null;
	String user = null;
	String password = null;
	
	try {
		String sql = "SELECT * FROM T_BOARD";
	
		// 1. 드라이버 연결 DB 커넥션 객체를 얻음
		connection = DriverManager.getConnection(host, user, password);
	
		// 2. 쿼리 수행을 위한 PreparedStatement 객체 생성
		pstmt = conn.createStatement();
	
		// 3. executeQuery: 쿼리 실행 후
		// ResultSet: DB 레코드 ResultSet에 객체에 담김
		rs = pstmt.executeQuery(sql);
		} catch (Exception e) {
		} finally {
			conn.close();
			pstmt.close();
			rs.close();
		}
	}
}
	
