package controller.inserer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Pavillon;
import model.Type_navire;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "FormInsertNavire", value = "/FormInsertNavire")
public class FormInsertNavire extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<Type_navire> allType_navires = Type_navire.findAll();
            ArrayList<Pavillon> allPavillons = Pavillon.findAll();

            request.setAttribute("allType_navires", allType_navires);
            request.setAttribute("allPavillons", allPavillons);
            request.setAttribute("link", "inserer");
            request.setAttribute("page", "form_insert_navire");
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
