package servlet;

import dao.MemberDAO;
import model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/editMember")
public class EditMemberServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        MemberDAO dao = new MemberDAO();
        Member member = dao.getMemberById(id);

        request.setAttribute("member", member);
        request.getRequestDispatcher("editMember.jsp").forward(request, response);
    }
}