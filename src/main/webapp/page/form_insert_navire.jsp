<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Type_navire" %>
<%@ page import="model.Pavillon" %>
<%
    ArrayList<Type_navire> allType_navires = (ArrayList<Type_navire>) request.getAttribute("allType_navires");
    ArrayList<Pavillon> allPavillons = (ArrayList<Pavillon>) request.getAttribute("allPavillons");
%>
<h1>Ajouter navire</h1>
<div class="container"></div>
<style>
    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
    }
</style>