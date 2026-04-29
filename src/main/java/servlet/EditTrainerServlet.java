package servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;

import dao.TrainerDAO;
import model.Trainer;

public class EditTrainerServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        TrainerDAO dao = new TrainerDAO();
        Trainer trainer = dao.getTrainerById(id);

        req.setAttribute("trainer", trainer);
        RequestDispatcher rd = req.getRequestDispatcher("editTrainer.jsp");
        rd.forward(req, res);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String speciality = req.getParameter("speciality");
        String phone = req.getParameter("phone");
        int experience = Integer.parseInt(req.getParameter("experience"));

        Trainer trainer = new Trainer();
        trainer.setId(id);
        trainer.setName(name);
        trainer.setSpeciality(speciality);
        trainer.setPhone(phone);
        trainer.setExperience(experience);

        TrainerDAO dao = new TrainerDAO();
        dao.updateTrainer(trainer);

        res.sendRedirect("viewTrainers");
    }
}