package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Navire;

import java.io.IOException;

@WebServlet(name = "AddNavire", value = "/AddNavire")
public class AddNavire extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom_navire = request.getParameter("nom_navire");
        String id_type_navire = request.getParameter("id_type_navire");
        String id_pavillon = request.getParameter("id_pavillon");
        double profondeur = Double.parseDouble(request.getParameter("profondeur"));
        double duree_remorquage = Double.parseDouble(request.getParameter("duree_remorquage"));
        try {
            Navire navire = new Navire(nom_navire, id_type_navire, id_pavillon, profondeur, duree_remorquage);
            navire.insertNavire();
            response.sendRedirect("FormInsertNavire");
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
