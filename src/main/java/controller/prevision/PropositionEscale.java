package controller.prevision;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Prestation;
import model.V_detail_navire;
import model.Prevision;
import model.Proposition;
import util.Helper;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Proposition", value = "/PropositionEscale")
public class PropositionEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        String date_entree = Helper.reformatDateTimeLocal(request.getParameter("date_entree"));
        String date_sortie = Helper.reformatDateTimeLocal(request.getParameter("date_sortie"));
        try {
            V_detail_navire navire = V_detail_navire.findById(id_navire);
            ArrayList<Prestation> allPrestations = Prestation.findAll();

            Proposition proposition = new Proposition(new Prevision(id_navire, date_entree, date_sortie));

            request.setAttribute("navire", navire);
            request.setAttribute("proposition", proposition);
            request.setAttribute("allPrestations", allPrestations);
            request.setAttribute("link", "prevision");
            request.setAttribute("page", "proposition_escale");

            request.getRequestDispatcher("index.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
