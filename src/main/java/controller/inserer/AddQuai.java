package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.Quai;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AddQuai", value = "/AddQuai")
public class AddQuai extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom_quai = request.getParameter("nom_quai");
        double profondeur = Double.parseDouble(request.getParameter("profondeur"));
        try {
            Quai quai = new Quai(nom_quai, profondeur);
            quai.insertQuai();
            response.sendRedirect("FormInsertQuai");
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
