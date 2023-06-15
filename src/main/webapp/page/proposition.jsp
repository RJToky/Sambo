<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.V_detail_navire" %>
<%
    V_detail_navire navire = (V_detail_navire) request.getAttribute("navire");
%>
<h1>Proposition</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddEscale">
        <div class="prestation">
            <h2>Prestation</h2>
            <div></div>
        </div>
    </form>
</div>
<style>
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
</style>