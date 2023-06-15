package controller.prevision;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Prevision;

import java.io.IOException;

@WebServlet(name = "AddPrevision", value = "/AddPrevision")
public class AddPrevision extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        String date_entree = "";
        String date_sortie = "";
        try {
            Prevision prevision = new Prevision(id_navire, date_entree, date_sortie);
            prevision.insertPrevision();
            response.sendRedirect("/Proposition?id_navire=" + id_navire);
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
