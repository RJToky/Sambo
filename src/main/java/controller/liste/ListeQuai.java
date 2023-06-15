package controller.liste;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Quai;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListeQuai", value = "/ListeQuai")
public class ListeQuai extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<Quai> allQuais = new Quai().findAll();
            request.setAttribute("allQuais", allQuais);
            request.setAttribute("link", "liste");
            request.setAttribute("page", "liste_quai");
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
