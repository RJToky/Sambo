<%@ page import="model.V_detail_navire" %>
<%@ page import="java.util.ArrayList" %>
<%
    ArrayList<V_detail_navire> allNavires = (ArrayList<V_detail_navire>) request.getAttribute("allNavires");
%>
<h1>Liste des navires</h1>
<div class="container">
    <table>
        <thead>
            <tr>
                <th>id_navire</th>
                <th>nom_navire</th>
                <th>id_type_navire</th>
                <th>type</th>
                <th>id_pavillon</th>
                <th>nom_pavillon</th>
                <th>profondeur</th>
                <th>duree_remorquage</th>
            </tr>
        </thead>
        <tbody>
            <% for (V_detail_navire navire : allNavires) { %>
            <tr>
                <td><%= navire.getId() %></td>
                <td><%= navire.getNom_navire() %></td>
                <td><%= navire.getId_type_navire() %></td>
                <td><%= navire.getType() %></td>
                <td><%= navire.getId_pavillon() %></td>
                <td><%= navire.getNom_pavillon() %></td>
                <td><%= navire.getProfondeur() %> m</td>
                <td><%= navire.getDuree_remorquage() %> min</td>
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