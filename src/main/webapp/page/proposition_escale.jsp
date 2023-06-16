<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%@ page import="model.Prestation" %>
<%@ page import="model.Proposition" %>
<%
    V_detail_navire navire = (V_detail_navire) request.getAttribute("navire");
    Proposition proposition = (Proposition) request.getAttribute("proposition");
    ArrayList<Prestation> allPrestations = (ArrayList<Prestation>) request.getAttribute("allPrestations");
%>
<h1>Proposition</h1>
<div class="container">
    <div class="content">
        <div class="detail">
            <h2>Détail navire</h2>
            <table>
                <thead>
                    <tr>
                        <th>id_navire</th>
                        <th>nom_navire</th>
                        <th>type</th>
                        <th>nom_pavillon</th>
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
                        <td><%= navire.getProfondeur() %> m</td>
                        <td><%= navire.getDuree_remorquage() %> min</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="proposition">
            <h2>Proposition</h2>
            <table>
                <thead>
                    <tr>
                        <th>id_quai</th>
                        <th>nom_quai</th>
                        <th>date_entree</th>
                        <th>date_sortie</th>
                        <th>montant (Ar/Euro)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>quai_001</td>
                        <td>Quai C</td>
                        <td>2023-06-16 16:00:00</td>
                        <td>2023-06-16 16:30:00</td>
                        <td>10000.0</td>
                    </tr>
<%--                    <tr>--%>
<%--                        <td><%= proposition.getId_quai() %></td>--%>
<%--                        <td><%= proposition.getNom_quai() %></td>--%>
<%--                        <td><%= proposition.getDate_entree() %></td>--%>
<%--                        <td><%= proposition.getDate_sortie() %></td>--%>
<%--                        <td><%= proposition.getMontant() %></td>--%>
<%--                    </tr>--%>
                </tbody>
            </table>
        </div>
        <div class="stationnement">
            <h2>Coût stationnement</h2>
            <table>
                <thead>
                    <tr>
                        <th>duree_stationnement</th>
                        <th>montant (Ar/Euro)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10 min</td>
                        <td>1000.0</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="remorquage">
            <h2>Coût remorquage</h2>
            <table>
                <thead>
                    <tr>
                        <th>duree_remorquage</th>
                        <th>montant</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%= navire.getDuree_remorquage() %> min</td>
                        <td>1000.0</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<h1>Escale</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddEscale" method="post">
        <input type="hidden" name="id_navire" value="<%= navire.getId() %>">
<%--        <input type="hidden" name="id_quai" value="<%= proposition.getId_quai() %>">--%>
        <input type="hidden" name="id_quai" value="quai_001">

        <div class="prestation">
            <h2>Choisir les prestations</h2>
            <% for (Prestation prestation : allPrestations) { %>
            <div class="field" style="margin-bottom: 0.25rem; display: flex; gap: 1em;">
                <% if(prestation.getNom_prestation().equalsIgnoreCase("stationnement") || prestation.getNom_prestation().equalsIgnoreCase("remorquage")) { %>
                <input type="checkbox" name="id_prestation" value="<%= prestation.getId() %>" checked disabled>
                <% } else { %>
                <input type="checkbox" name="id_prestation" value="<%= prestation.getId() %>">
                <% } %>
                <span style="font-size: 20px"><%= prestation.getNom_prestation() %></span>
            </div>
            <% } %>
        </div>
        <div>
            <button style="width: 215px;">Valider</button>
        </div>
    </form>
</div>

<style>
    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
    }

    button {
        font-size: 16px;
        cursor: pointer;
        height: 40px;
        border: 1px solid #cfcfcf;
        border-radius: 5px;
        outline: none;
        color: #626262;
    }

    .container:not(:last-child) {
        margin-bottom: 3rem;
    }

    .container form {
        display: flex;
        flex-direction: column;
        gap: 3em;
    }

    .container .content {
        display: flex;
        flex-direction: column;
        gap: 3em;
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