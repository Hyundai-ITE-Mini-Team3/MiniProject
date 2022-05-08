package com.hyundai.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

/*************************************************************
파일명: JDBCTests.java
작성자: 박주영
*************************************************************/

@Log4j
public class JDBCTests {	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}//end static
	
	@Test
	public void TestConnection() {
		try {
			Connection con = 
					DriverManager.getConnection(
							"jdbc:oracle:thin:@edudb_high?TNS_ADMIN=C:/dev/OracleWallet/project/Wallet_edudb"
							,"miniproj","Guseo3whghkdlxld");
			log.info(con);
		} catch (SQLException e) {
			fail(e.getMessage());			
		}//end try			
	}//end test
}//end class
