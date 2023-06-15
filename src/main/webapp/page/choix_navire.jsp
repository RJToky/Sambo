<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%@ page import="java.util.ArrayList" %>
<%
  ArrayList<V_detail_navire> allNavires = (ArrayList<V_detail_navire>) request.getAttribute("allNavires");
%>
<h1>Choissir un navire</h1>
<div class="container">
  <% for (V_detail_navire navire : allNavires) { %>
  <a href="${pageContext.request.contextPath}/Prevision?id_navire=<%= navire.getId() %>" class="item">
    <h2><%= navire.getNom_navire() %></h2>
    <h3><%= navire.getType() %></h3>
    <h4><%= navire.getNom_pavillon() %></h4>
  </a>
  <% } %>
</div>
<style>
  h1 {
    color: #2ca8b1;
    margin-bottom: 1.75rem;
  }

  .container {
    display: flex;
    gap: 2em;
    flex-wrap: wrap;
  }

  .item {
    width: 200px;
    background-color: white;
    border-radius: 15px;
    box-shadow: 1px 1px 15px #0000000f;
    padding: 2em 1.5em;
    display: flex;
    flex-direction: column;
    gap: 1em;
    align-items: center;
    transform: scale(1);
    transition: 0.3s;
  }

  .item:hover {
    transform: scale(1.1);
  }

  .item h2 {
    color: #626262;
  }

  .item h3 {
    color: #7b7b7b;
    font-weight: 200;
  }

  .item h4 {
    color: #2ca8b1;
  }
</style>