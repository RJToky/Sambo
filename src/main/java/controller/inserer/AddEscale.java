package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Escale;
import util.Helper;

import java.io.IOException;

@WebServlet(name = "AddEscale", value = "/AddEscale")
public class AddEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        String date_entree = Helper.reformatDateTimeLocal(request.getParameter("date_entree"));
        String date_sortie = null;

        try {
            Escale escale = new Escale(id_navire, date_entree, date_sortie);
            escale.insertEscale();

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
