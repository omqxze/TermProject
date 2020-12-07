package BM.com.dao;
import java.sql.*;


public class dbconn {
	static Connection conn=null;
	public static void main(String args[]) throws ClassNotFoundException {

		try{
			String url="jdbc:mysql://localhost:3306/soccer?useSSL=false";
			String user="root";
			String password="1234";
			String driver="com.mysql.jdbc.Driver";
			
			Class.forName(driver);
			conn=DriverManager.getConnection(url,user,password);
		} catch(SQLException ex){
			System.out.println("데이터베이스 연결이 실패했습니다.<br>");
			System.out.println("SQLException : "+ex.getMessage());
		}
	}
}
