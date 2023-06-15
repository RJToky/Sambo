package controller.prevision;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.V_detail_navire;

import java.io.IOException;

@WebServlet(name = "Prevision", value = "/Prevision")
public class Prevision extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_navire = request.getParameter("id_navire");
        try {
            V_detail_navire navire = V_detail_navire.findById(id_navire);
            request.setAttribute("navire", navire);
            request.setAttribute("link", "prevision");
            request.setAttribute("page", "prevision");

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
