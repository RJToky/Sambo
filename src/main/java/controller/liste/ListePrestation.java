package controller.liste;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.V_prestation_escale;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListePrestation", value = "/ListePrestation")
public class ListePrestation extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<V_prestation_escale> allPrestation_escales = V_prestation_escale.findAll();
            request.setAttribute("allPrestation_escales", allPrestation_escales);
            request.setAttribute("link", "liste");
            request.setAttribute("page", "liste_prestation_escale");
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
