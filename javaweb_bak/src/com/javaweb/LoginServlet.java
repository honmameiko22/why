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
import javax.servlet.http.HttpSession;

import com.bean.UserBean;

@WebServlet(name="LoginServlet", urlPatterns={ "/login" })
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
		UserBean usr=new UserBean(); 
    //    request.setCharacterEncoding("UTF-8");  
      //  response.setCharacterEncoding("UTF-8");  
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();  
        //向服务器发送请求获取到参数  
        String username=request.getParameter("name");
        String password=request.getParameter("password");  
        System.out.println("name="+username);
		try {
			int ret=usr.Login(username, password);
			System.out.println("ret="+ret);
	       // response.setHeader("Content-Type", "text/html; charset=UTF-8");  
	      //  Writer out=response.getWriter();  
	        //success
	        if(ret>=1){
		        String responseText = "登陆成功";
		        HttpSession session=request.getSession();
		        session.setAttribute("username", username);
		        session.setAttribute("userid", ret);
		        out.println(responseText);  
		        out.close(); 
	        }
	        //wrong password
	        else if(ret==0){
		        String responseText = "密码错误";
		        out.println(responseText);  
		        out.close(); 
	        }
	        else if(ret==-1){
		        String responseText = "用户不存在";
		        out.println(responseText);  
		        out.close(); 
	        }
	        System.out.println(username+"--"+password);  
	          
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
        //设置跳转到mainp
	}

}
