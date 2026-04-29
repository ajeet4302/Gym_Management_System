package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

import dao.MemberDAO;

public class DeleteMemberServlet extends HttpServlet {

protected void doGet(HttpServletRequest req,HttpServletResponse res)
throws ServletException,IOException {

int id=Integer.parseInt(req.getParameter("id"));

MemberDAO dao=new MemberDAO();
dao.deleteMember(id);

res.sendRedirect("viewMembers");
}
}