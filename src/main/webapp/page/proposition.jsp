<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%@ page import="model.Prestation" %>
<%
    V_detail_navire navire = (V_detail_navire) request.getAttribute("navire");
    ArrayList<Prestation> allPrestations = (ArrayList<Prestation>) request.getAttribute("allPrestations");
%>
<h1>Proposition</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddEscale" method="post">
        <input type="hidden" name="id_navire" value="<%= navire.getId() %>">
        <div class="prestation">
            <h2>Choisir les prestations</h2>
            <% for (Prestation prestation : allPrestations) { %>
                <div class="field" style="margin-bottom: 0.25rem; display: flex; gap: 1em;">
                    <input type="checkbox" name="id_prestation" value="<%= prestation.getId() %>">
                    <span style="font-size: 20px"><%= prestation.getNom_prestation() %></span>
                </div>
            <% } %>
        </div>
        <div style="margin-top: 3em">
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
</style>