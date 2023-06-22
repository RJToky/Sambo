<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Type_navire" %>
<%@ page import="model.Pavillon" %>
<%
    ArrayList<Type_navire> allType_navires = (ArrayList<Type_navire>) request.getAttribute("allType_navires");
    ArrayList<Pavillon> allPavillons = (ArrayList<Pavillon>) request.getAttribute("allPavillons");
%>
<h1>Ajouter navire</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddNavire" method="post">
        <div class="field">
            <label for="nom_navire">nom_navire</label>
            <input type="text" name="nom_navire" id="nom_navire" placeholder="nom_navire" required>
        </div>
        <div class="field">
            <label for="type_navire">type_navire</label>
            <select name="id_type_navire" id="type_navire" required>
                <% for (Type_navire type_navire : allType_navires) { %>
                    <option value="<%= type_navire.getId() %>"><%= type_navire.getNom_type() %></option>
                <% } %>
            </select>
        </div>
        <div class="field">
            <label for="pavillon">pavillon</label>
            <select name="id_pavillon" id="pavillon" required>
                <% for (Pavillon pavillon : allPavillons) { %>
                <option value="<%= pavillon.getId() %>"><%= pavillon.getNom_pavillon() %></option>
                <% } %>
            </select>
        </div>
        <div class="field">
            <label for="profondeur">profondeur</label>
            <input type="number" name="profondeur" id="profondeur" placeholder="profondeur" required>
        </div>
        <div class="field">
            <label for="duree_remorquage">duree_remorquage</label>
            <input type="number" name="duree_remorquage" id="duree_remorquage" placeholder="duree_remorquage" required>
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
        width: clamp(380px, 35%, 80%);
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