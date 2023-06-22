package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Profil;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ControllerProfil", value = "/ControllerProfil")
public class ControllerProfil extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            if(request.getParameter("id_profil") != null) {
                request.getSession().setAttribute("id_profil", request.getParameter("id_profil"));
                response.sendRedirect("ListeNavire");
            } else {
                ArrayList<Profil> allProfils = Profil.findAll();
                request.setAttribute("allProfils", allProfils);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
