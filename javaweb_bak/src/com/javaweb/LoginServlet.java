package com.javaweb;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.UserBean;

@WebServlet(name="LoginServlet", urlPatterns={ "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserBean usr=new UserBean(); 
        request.setCharacterEncoding("UTF-8");  
        response.setCharacterEncoding("UTF-8");  
        //向服务器发送请求获取到参数  
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
        usr.setName(username);
        int ret=0;
		try {
			ret=usr.Login(username, password);
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
        response.setHeader("Content-Type", "text/html; charset=UTF-8");  
        Writer out=response.getWriter();  
        //success
        if(ret==1){
        	 out.write("curent user:用户名="+username);  
        }
        //wrong password
        else if(ret==0){
        	out.write("wrong password");
        }
        System.out.println(username+"--"+password);  
          
        out.flush();  
        out.close();
	}

}
