package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Escale;
import model.Prestation_escale;
import util.Helper;

import java.io.IOException;

@WebServlet(name = "AddEscale", value = "/AddEscale")
public class AddEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        String id_quai = request.getParameter("id_quai");
        String date_entree = Helper.reformatDateTimeLocal(request.getParameter("date_entree"));

        String date_sortie = null;
        if(!request.getParameter("date_sortie").equalsIgnoreCase("")) {
            date_sortie = Helper.reformatDateTimeLocal(request.getParameter("date_sortie"));
        }

        try {
            Escale escale = new Escale(id_navire, date_entree, date_sortie);
            escale.insertEscale();

            Prestation_escale prestation_escale = new Prestation_escale(Escale.findByLastId().getId(), id_quai, "prestation_001", date_entree, date_sortie, 1);
            prestation_escale.insertPrestation_escale();

            response.sendRedirect("FormInsertEscale");
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
