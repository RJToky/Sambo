<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.V_prestation_escale" %>
<%
    ArrayList<V_prestation_escale> allPrestation_escales = (ArrayList<V_prestation_escale>) request.getAttribute("allPrestation_escales");
%>
<h1>Liste prestation escale</h1>
<div class="container">
    <table>
        <thead>
            <tr>
                <th>nom_prestation</th>
                <th>nom_quai</th>
                <th>debut</th>
                <th>fin</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <% for (V_prestation_escale prestation_escale : allPrestation_escales) { %>
            <tr>
                <td><%= prestation_escale.getNom_prestation() %></td>
                <td><%= prestation_escale.getNom_quai() %></td>
                <td><%= prestation_escale.getDebut() %></td>
                <td><%= prestation_escale.getFin() %></td>
                <td><a href="${pageContext.request.contextPath}/?id_escale=<%= prestation_escale.getId_escale() %>" style="color: #2ca8b1;">Modifier</a></td>
                <td><a href="${pageContext.request.contextPath}/?id_escale=<%= prestation_escale.getId_escale() %>" style="color: #2ca8b1;">Valider</a></td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>
<style>
    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
    }

    .container {
        display: flex;
        flex-direction: column;
    }

    .container table {
        border: none;
    }

    .container table thead {
        background: #2ca8b117;
    }

    .container table tbody {
        background: #f9f9f9;
    }

    .container table th {
        color: #626262;
        padding: 1em;
        text-align: left;
    }

    .container table td {
        color: #7b7b7b;
        padding: 1em;
        font-weight: 200;
    }
</style>