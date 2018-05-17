package com.javaweb;

import java.io.IOException;
import java.io.Writer;

import com.bean.UserBean;
import com.javaweb.*;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="SignupServlet", urlPatterns={ "/signup" })
public class SignupServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		UserBean usr=new UserBean(); 
        request.setCharacterEncoding("UTF-8");  
        response.setCharacterEncoding("UTF-8");  
        //向服务器发送请求获取到参数  
        String username=request.getParameter("name");  
        String email=request.getParameter("mail");  
        String password=request.getParameter("password");
        usr.setName(username);
        usr.setMail(email);
        usr.setPassword(password);
        //More information
		try {
			int ret=usr.Create(usr);
			System.out.println("ret="+ret);
	        response.setHeader("Content-Type", "text/html; charset=UTF-8");  
	        Writer out=response.getWriter();  
	        //success
	        if(ret==1){
	        	 out.write("user already exist\n");  
	        }
	        //exist
	        else if(ret==0){
	        	out.write("curent user:用户名="+username);
	        }
	        System.out.println(username+"--"+password);  
	        out.flush();  
	        out.close();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
