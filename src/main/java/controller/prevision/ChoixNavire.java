package controller.prevision;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import model.V_detail_navire;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ChoixNavire", value = "/ChoixNavire")
public class ChoixNavire extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ArrayList<V_detail_navire> allNavires = new V_detail_navire().findAll();
            request.setAttribute("allNavires", allNavires);
            request.setAttribute("link", "prevision");
            request.setAttribute("page", "choix_navire");

            request.getRequestDispatcher("index.jsp").forward(request, response);
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
