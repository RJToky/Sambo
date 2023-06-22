<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Navire" %>
<%@ page import="model.Quai" %>
<%
    ArrayList<Navire> allNavires = (ArrayList<Navire>) request.getAttribute("allNavires");
    ArrayList<Quai> allQuais = (ArrayList<Quai>) request.getAttribute("allQuais");
%>
<h1>Ajouter escale</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddEscale" method="post">
        <div class="field">
            <label for="nom_navire">nom_navire</label>
            <select name="id_navire" id="nom_navire" required>
                <% for (Navire navire : allNavires) { %>
                    <option value="<%= navire.getId() %>"><%= navire.getNom_navire() %></option>
                <% } %>
            </select>
        </div>
        <div class="field">
            <label for="nom_quai">nom_quai</label>
            <select name="id_quai" id="nom_quai" required>
                <% for (Quai quai : allQuais) { %>
                <option value="<%= quai.getId() %>"><%= quai.getNom_quai() %></option>
                <% } %>
            </select>
        </div>
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
        <div class="field">
            <button>Valider</button>
        </div>
    </form>
</div>
<style>
    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
        text-align: center;
    }

    .container {
        display: flex;
        justify-content: center;
    }

    .container form {
        display: flex;
        flex-direction: column;
        gap: 2em;
        width: clamp(380px, 45%, 80%);
    }

    .container form .date {
        display: flex;
        flex-wrap: wrap;
        gap: 2em;
    }

    .container form .field {
        display: flex;
        flex-direction: column;
    }

    .container form .field label {
        margin-bottom: 0.5rem;
    }

    .container form .field input, .container form .field select {
        padding-left: 0.75em;
        font-size: 18px;
    }

    .container form .field button {
        font-size: 16px;
        cursor: pointer;
    }

    .container form .field input, .container form .field select, .container form .field button {
        height: 40px;
        border: 1px solid #cfcfcf;
        border-radius: 5px;
        outline: none;
        color: #626262;
    }
</style>