package controller.liste;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Escale;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListeEscale", value = "/ListeEscale")
public class ListeEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<Escale> allEscales = Escale.findAll();
            request.setAttribute("allEscales", allEscales);
            request.setAttribute("link", "liste");
            request.setAttribute("page", "liste_escale");
            request.getRequestDispatcher("accueil.jsp").forward(request, response);
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
