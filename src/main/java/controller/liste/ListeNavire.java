package controller.liste;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.V_detail_navire;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ListeNavire", value = "/ListeNavire")
public class ListeNavire extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ArrayList<V_detail_navire> allNavires = new V_detail_navire().findAll();
            request.setAttribute("allNavires", allNavires);
            request.setAttribute("link", "liste");
            request.setAttribute("page", "liste_navire");

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
