package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import dao.TrainerDAO;

public class DeleteTrainerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        TrainerDAO dao = new TrainerDAO();
        dao.deleteTrainer(id);

        res.sendRedirect("viewTrainers");
    }
}