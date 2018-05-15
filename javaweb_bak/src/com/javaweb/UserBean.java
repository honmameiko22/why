package com.javaweb;
import java.sql.SQLException;

import com.javaweb.DataBase;

public class UserBean implements java.io.Serializable{
	private String name=null;
	private int age=0;
	private String password=null;
	public UserBean(){
	}
	public void setName(String name){
		this.name=name;
	}
	public void setAge(int age){
		this.age=age;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return this.password;
	}
	public String getName(){
		return this.name;
    }
	public int getAge(){
		return this.age;
	}
	public int Create(UserBean usr) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		int exit=0;
		DataBase create= new DataBase();
		create.CreateUsr(usr);
		return exit;
	}
	public int Login (String name, String password) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		int success=0;
		DataBase create= new DataBase();
		success=create.login(name, password);
		return success;
	}
}
