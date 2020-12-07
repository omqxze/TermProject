package BM.com.dao;
import java.sql.*;
import java.util.*;
import java.io.*;
import jxl.*;
import jxl.write.*;
import jxl.format.*;


public class insert{
 public static void main(String args[]) throws Exception{
  Connection conn=null;

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
	
	PreparedStatement pstmt=null;
	String sql="insert into player values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	

  //excel 파일 db에 insert
  String file="C:\\Users\\PJH\\eclipse-workspace\\TermProject\\src\\player.xls";
  Workbook workbook = Workbook.getWorkbook(new File(file));
  Sheet sheet = workbook.getSheet(0);
  System.out.println(sheet.getRows()+"와 "+sheet.getColumns());
  Cell myCell = null;
  for(int i=1 ; i<sheet.getRows() ; i++){
	  System.out.print("insert into player values(");
   for(int j=0 ; j<sheet.getColumns() ; j++){
    myCell = sheet.getCell(j,i);
    	int a=j+1;
    	pstmt.setString(a, myCell.getContents().toString());
    	if(a==1||a==3||a==10||a==14)
    		System.out.print(myCell.getContents()+",");
    	else
    		System.out.print("'"+myCell.getContents()+"',");
    	
   }
   
   System.out.println(");");
  }
  
  System.out.println("디비 입력 완료");
  if(pstmt!=null)
		pstmt.close();
	if(conn!=null)
		conn.close();
 }
 }