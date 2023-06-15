<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%
    V_detail_navire navire = (V_detail_navire) request.getAttribute("navire");
%>
<h1>Proposition</h1>
<div class="container"></div>
<style>
    h1 {
        color: #2ca8b1;
        margin-bottom: 1.75rem;
    }
</style>