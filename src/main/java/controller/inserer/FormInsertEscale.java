package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Navire;
import model.Quai;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FormInsertEscale", value = "/FormInsertEscale")
public class FormInsertEscale extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<Navire> allNavires = Navire.findAll();
            ArrayList<Quai> allQuais = Quai.findAll();

            request.setAttribute("allNavires", allNavires);
            request.setAttribute("allQuais", allQuais);
            request.setAttribute("link", "inserer");
            request.setAttribute("page", "form_insert_escale");
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
