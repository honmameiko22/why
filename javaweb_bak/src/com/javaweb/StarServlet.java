package com.javaweb;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.exe.*;

@WebServlet(name="StarServlet", urlPatterns={ "/star" })
public class StarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        String num=request.getParameter("num");
        int userid=Integer.parseInt(request.getParameter("userid"));
        int textid=Integer.parseInt(request.getParameter("textid"));
        System.out.println("num="+num+"userid="+userid+"textid="+textid);
        myredis my=new myredis();
        if(my.insertexist(userid, textid)==1)
        	my.add(Integer.parseInt(num), textid);
        my.show();
	}

}
