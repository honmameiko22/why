package com.bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.exe.DataBase;

public class ItemBean implements java.io.Serializable{
	private int ownerid=-1;
	private int textid=-1;
	private String owenerName=null;
	private String url=null;
	private String content=null;
	private int star=0;
	public ItemBean(){
		
	}
	public int getOwnerid(){
		return this.ownerid;
	}
	public int getStar(){
		return this.star;
	}
	public String getOwenerName(){
		return this.owenerName;
	}
	public int getTextid(){
		return this.textid;
	}
	public String getUrl(){
		return this.url;
	}
	public String getContent(){
		return this.content;
	}
	public void setOwnerid(int id){
		this.ownerid=id;
	}
	public void setStar(int star){
		this.star=star;
	}
	public void setTextid(int id){
		this.textid=id;
	}
	public void setOwenerName(String name){
		this.owenerName=name;
	}
	public void setUrl(String url){
		this.url=url;
	}
	public void setContent(String content){
		this.content=content;
	}
	public List<ItemBean> Load(int i) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException{
		DataBase create=new DataBase();
		List<ItemBean> ret=create.Load(i);
		return ret;
	}
	
}
