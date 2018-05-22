package com.bean;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.exe.DataBase;

public class UserBean implements java.io.Serializable{
	private String name=null;
	private String mail=null;
	private String password=null;
	
	public UserBean(){
	}
	public void setName(String name){
		this.name=name;
	}
	public void setMail(String mail){
		this.mail=mail;
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
	public String getMail(){
		return this.mail;
	}
	public int Create(UserBean usr) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		int exit=0;
		DataBase create= new DataBase();
		exit=create.CreateUsr(usr);
		return exit;
	}
	public int Login (String name, String password) throws InstantiationException, IllegalAccessException, ClassNotFoundException, SQLException{
		int success=0;
		DataBase create= new DataBase();
		success=create.login(name, password);
		return success;
	}
}
