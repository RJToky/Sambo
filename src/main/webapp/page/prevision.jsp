<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%
    V_detail_navire navire = (V_detail_navire) request.getAttribute("navire");
%>
<h1>Prévision</h1>
<div class="container">
    <div class="detail">
        <h2>Détail navire</h2>
        <table>
            <thead>
                <tr>
                    <th>id_navire</th>
                    <th>nom_navire</th>
                    <th>type</th>
                    <th>nom_pavillon</th>
                    <th>prix_pavillon</th>
                    <th>profondeur</th>
                    <th>duree_remorquage</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= navire.getId() %></td>
                    <td><%= navire.getNom_navire() %></td>
                    <td><%= navire.getType() %></td>
                    <td><%= navire.getNom_pavillon() %></td>
                    <td><%= navire.getPrix_pavillon() %> Ar</td>
                    <td><%= navire.getProfondeur() %> m</td>
                    <td><%= navire.getDuree_remorquage() %> min</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="prevision">
        <h2>Prévision d'escale</h2>
        <form action="${pageContext.request.contextPath}/Proposition" method="post">
            <div class="date">
                <div class="field">
                    <label for="date_entree">Date d'entrée</label>
                    <input type="datetime-local" name="date_entree" id="date_entree" required>
                </div>
                <div class="field">
                    <label for="date_sortie">Date de sortie</label>
                    <input type="datetime-local" name="date_sortie" id="date_sortie">
                </div>
            </div>
            <input type="hidden" name="id_navire" value="<%= navire.getId() %>">
            <div class="field">
                <button style="width: 215px;">Voir la proposition</button>
            </div>
        </form>
    </div>
</div>
<style>
    .container .prevision form {
        display: flex;
        flex-direction: column;
        gap: 3em;
    }

    .container .prevision form .field label {
        margin-bottom: 0.5rem;
    }

    .container .prevision form .field input {
        padding-left: 0.75em;
        padding-right: 0.75em;
        font-size: 16px;
    }

    .container .prevision form .field button {
        font-size: 16px;
        cursor: pointer;
    }

    .container .prevision form .field input, .container .prevision form .field button {
        height: 40px;
        border: 1px solid #cfcfcf;
        border-radius: 5px;
        outline: none;
        color: #626262;
    }

    .container .prevision form .field {
        display: flex;
        flex-direction: column;
    }

    .container .prevision form .date {
        display: flex;
        flex-wrap: wrap;
        gap: 2em;
    }

    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
    }

    .container {
        display: flex;
        flex-direction: column;
        gap: 3em;
        overflow: hidden;
    }

    .container h2 {
        color: #626262;
        margin-bottom: 0.5rem;
    }

    .container .detail table {
        border: none;
    }

    .container .detail table thead {
        background: #2ca8b117;
    }

    .container .detail table tbody {
        background: #f9f9f9;
    }

    .container .detail table th {
        color: #626262;
        padding: 1em;
        text-align: left;
    }

    .container .detail table td {
        color: #7b7b7b;
        padding: 1em;
        font-weight: 200;
    }
</style>