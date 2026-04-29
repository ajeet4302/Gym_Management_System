package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.*;

import dao.TrainerDAO;
import model.Trainer;

public class ViewTrainerServlet extends HttpServlet {

protected void doGet(HttpServletRequest req, HttpServletResponse res)
throws ServletException, IOException {

TrainerDAO dao = new TrainerDAO();

List<Trainer> list = dao.getAllTrainers();

req.setAttribute("list", list);

RequestDispatcher rd = req.getRequestDispatcher("viewTrainers.jsp");

rd.forward(req, res);

}

}