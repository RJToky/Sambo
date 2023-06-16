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
                <th>id_quai</th>
                <th>id_navire</th>
                <th>entree</th>
                <th>sortie</th>
<%--                <th>cout (Ar)</th>--%>
<%--                <th>cout (Dollar)</th>--%>
<%--                <th>Etat</th>--%>
            </tr>
        </thead>
        <tbody>
            <% for (Escale escale : allEscales) { %>
            <tr>
                <td><%= escale.getId() %></td>
                <td><%= escale.getId_quai() %></td>
                <td><%= escale.getId_navire() %></td>
                <td><%= escale.getDate_entree() %></td>
                <td><%= escale.getDate_sortie() %></td>
<%--                <td>20000</td>--%>
<%--                <td>100</td>--%>
<%--                <td>sur place</td>--%>
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