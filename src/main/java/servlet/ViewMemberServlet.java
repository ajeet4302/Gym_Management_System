package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

import dao.MemberDAO;
import model.Member;

public class ViewMemberServlet extends HttpServlet {

protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

MemberDAO dao = new MemberDAO();

List<Member> list = dao.getAllMembers();

req.setAttribute("list", list);

RequestDispatcher rd = req.getRequestDispatcher("viewMembers.jsp");
rd.forward(req, res);

}

}