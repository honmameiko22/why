package com.javaweb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DataBase {
	private String driverName = "com.mysql.jdbc.Driver"; //驱动名称
	private String DBName="net";
	private String DBUser="root";
	private String DBPassword="4400576";
	private String connUrl;
	private Connection conn;
	private Statement stmt;

	public DataBase() throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
		Class.forName(driverName).newInstance(); 
		connUrl = "jdbc:mysql://localhost/" + DBName + "?user=" + DBUser + "&password=" + DBPassword;  
		conn = DriverManager.getConnection(connUrl);  
        stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	}
	
	public int CreateUsr(UserBean usr)  {
        System.out.println("create user...");
        int flag=0;
		String query_sql="select password from usr where name='"+usr.getName()+"'" ;
        ResultSet rs=null;
		try {
			rs = stmt.executeQuery(query_sql);
	        while(rs.next()){
	        	flag=1;
	        	break;
	        }
	        System.out.println("flag="+flag);
	        //不存在该用户，则存入数据库
	        if(flag==0){
	       // 	 String insert_sql = "insert into usr values('"+usr+"','"+pw+"')";
	        	// stmt.execute(insert_sql);  
	        }
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally{
			try{
				if(rs!=null) 
			        rs.close();
				if(conn!=null)
					conn.close();
		    	if(stmt!=null)
					stmt.close();
			}catch (SQLException e) {  
                e.printStackTrace();  
            }  
		}
        return flag;
	}
	
	public int login(String myname, String pw)throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException {
        System.out.println("finding user...");
		
		String sql = "select password from usr where name='"+myname+"'" ;//拼接进去
		ResultSet rs = stmt.executeQuery(sql);  //查询语句
		System.out.println("1n");
		int flag=-1;
		 while(rs.next()){
			 flag=0;
			  if(rs.getString("password").equals(pw)) flag=1;
		 }
	
		conn.close(); 
		stmt.close();
		rs.close();
		return flag;
	}
}
