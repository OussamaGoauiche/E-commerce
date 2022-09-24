package com.package1.e_commerce.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.package1.e_commerce.Dao.UserDao;
import com.package1.e_commerce.connection.Dbconn;
import com.package1.e_commerce.model.User;

/**
 * Servlet implementation class User_login
 */
@WebServlet("/User_login")
public class User_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out= response.getWriter()){
			String email = request.getParameter("login-mail");
			String password = request.getParameter("login-password");
			UserDao udao = new UserDao(Dbconn.getConnection());
			User user =udao.userLogin(email,password);
			if(user!=null){
				out.print("login succful");
				request.getSession().setAttribute("auth", user);
				response.sendRedirect("index.jsp");
			}
			else
				out.print("login failed");
			out.print(email +" "+password );
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
