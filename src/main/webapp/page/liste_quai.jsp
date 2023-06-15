<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Quai" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<Quai> allQuais = (ArrayList<Quai>) request.getAttribute("allQuais");
%>
<h1>Liste quai</h1>
<div class="container">
    <table>
        <thead>
            <tr>
                <th>id_quai</th>
                <th>nom_quai</th>
                <th>profondeur</th>
                <th>Etat</th>
            </tr>
        </thead>
        <tbody>
            <% for (Quai quai : allQuais) { %>
            <tr>
                <td><%= quai.getId() %></td>
                <td><%= quai.getNom_quai() %></td>
                <td><%= quai.getProfondeur() %> m</td>
                <td>Occupé</td>
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