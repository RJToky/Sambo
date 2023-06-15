package controller.prevision;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Escale;
import model.Prestation_escale;
import util.Helper;

import java.io.IOException;

@WebServlet(name = "AddEscale", value = "/AddEscale")
public class AddEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        String id_quai = request.getParameter("id_quai");
        String[] id_prestation = request.getParameterValues("id_prestation");
        String date_entree = Helper.reformatDateTimeLocal(request.getParameter("date_entree"));
        String date_sortie = Helper.reformatDateTimeLocal(request.getParameter("date_sortie"));
        try {
            Escale escale = new Escale(id_navire, id_quai, date_entree, date_sortie);
            escale.insertEscale();

            String lastIdEscale = Escale.findByLastId().getId();
            for (String id : id_prestation) {
                if (id != null) {
                    Prestation_escale prestationEscale = new Prestation_escale(lastIdEscale, id);
                    prestationEscale.insertPrestation_escale();
                }
            }
            response.sendRedirect("ListeEscale");
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
