package servlet;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.*;

import dao.TrainerDAO;
import model.Trainer;

public class AddTrainerServlet extends HttpServlet {

protected void doPost(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

String name = req.getParameter("name");
String speciality = req.getParameter("speciality");
String phone = req.getParameter("phone");
int experience = Integer.parseInt(req.getParameter("experience"));

Trainer t = new Trainer();

t.setName(name);
t.setSpeciality(speciality);
t.setPhone(phone);
t.setExperience(experience);

TrainerDAO dao = new TrainerDAO();

dao.addTrainer(t);

res.sendRedirect("viewTrainers");

}

}