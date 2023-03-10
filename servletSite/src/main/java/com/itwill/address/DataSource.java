package com.itwill.address;

import java.io.*;
import java.sql.*;
import java.util.*;

/*
데이타베이스 설정 정보를 사용하여 
Connection객체를 생성, 해지하는 역할을 하는 클래스
(Dao객체들이 사용하는 객체)
 */
public class DataSource {
	/***************데이타베이스 접속 정보***************/
	private String driverClass;
	private String url;
	private String user;
	private String password;
	/**
	 ***************************************************/
	public DataSource() throws Exception {
		/************jdbc.properties 파일을 읽어서 데이타베이스 접속 정보를  필드에 저장*************/
		Properties properties = new Properties();
		InputStream propertiesInput = DataSource.class.getResourceAsStream("/jdbc.properties");
		properties.load(propertiesInput);
		this.driverClass = properties.getProperty("driverClass");
		this.url = properties.getProperty("url");
		this.user = properties.getProperty("user");
		this.password = properties.getProperty("password");
	}
	/*
	 * Connection 객체 생성 후 반환하는  메소드
	 */
	public Connection getConnection() throws Exception {
		Class.forName(driverClass);
		Connection con = DriverManager.getConnection(url, user, password);
		return con;
	}
	
	/*
	 * Connection 객체를 close하는 메소드
	 */
	public void close(Connection con) throws Exception {
		con.close();
	}
	
}
