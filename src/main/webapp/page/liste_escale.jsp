<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Escale" %>
<%
    ArrayList<Escale> allEscales = (ArrayList<Escale>) request.getAttribute("allEscales");
%>
<h1>Liste escale</h1>
<div class="container">
    <table>
        <thead>
            <tr>
                <th>id_escale</th>
                <th>id_navire</th>
                <th>entree</th>
                <th>sortie</th>
                <th></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <% for (Escale escale : allEscales) { %>
            <tr>
                <td><%= escale.getId() %></td>
                <td><%= escale.getId_navire() %></td>
                <td><%= escale.getDate_entree() %></td>
                <td><%= escale.getDate_sortie() %></td>
                <td><a href="${pageContext.request.contextPath}/ListePrestation?id_escale=<%= escale.getId() %>" style="color: #2ca8b1;">Prestation</a></td>
                <td><a href="${pageContext.request.contextPath}/ListeFacture?id_escale=<%= escale.getId() %>" style="color: #2ca8b1;">Facture</a></td>
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