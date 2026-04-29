package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import dao.AdminDAO;

public class LoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException{

String username=req.getParameter("username");
String password=req.getParameter("password");

AdminDAO dao=new AdminDAO();

boolean status=dao.checkLogin(username,password);

if(status){

res.sendRedirect("dashboard.jsp");

}else{

res.getWriter().println("Invalid Login");

}

}

}