package com.foodapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.foodapp.daoImpl.UserDAOImpl;
import com.foodapp.dto.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
     private HttpSession session;

	@Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	 String email = req.getParameter("email");
    	 String password = req.getParameter("password");
    	 
    	 UserDAOImpl udao = new UserDAOImpl();
    	User user = udao.getUserByEmail(email);
    	
    	if(user!=null) {
    		if(password.equals(user.getPassword())) {
    			
    			session = req.getSession();
    			session.setAttribute("username", user);
    			resp.sendRedirect("home.jsp");
    		}
    		else {
    			resp.sendRedirect("incorrectPwd.jsp");
    		}
    		
    	}
    	else {
    		resp.sendRedirect("register.jsp");
    	}
    }
     

}

