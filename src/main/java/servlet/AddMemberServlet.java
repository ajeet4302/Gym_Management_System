package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

import dao.MemberDAO;
import model.Member;

public class AddMemberServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest req,HttpServletResponse res)
    throws ServletException,IOException {

        int id=Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        int age=Integer.parseInt(req.getParameter("age"));
        String phone=req.getParameter("phone");
        String plan=req.getParameter("plan");

        Member m=new Member();

        m.setId(id);
        m.setName(name);
        m.setAge(age);
        m.setPhone(phone);
        m.setPlan(plan);

        MemberDAO dao=new MemberDAO();
        dao.addMember(m);  

        res.sendRedirect("viewMembers");
    }
}