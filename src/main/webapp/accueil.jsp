<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String link = (request.getAttribute("link") != null) ? (String) request.getAttribute("link") : "";
    String _page = (request.getAttribute("page") != null) ? (String) request.getAttribute("page") : "";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="./assets/css/style.css" />
        <link href="https://fonts.cdnfonts.com/css/metropolis-2" rel="stylesheet" />
        <title>Sambo</title>
    </head>
    <body>
        <header>
            <nav>
                <ul>
                    <% if (link.equalsIgnoreCase("liste")) { %>
                    <li class="active">
                            <% } else { %>
                    <li>
                        <% } %>
                        <a href="#">Liste</a><span></span>
                        <div class="dropdown">
                            <ul>
                                <a href="${pageContext.request.contextPath}/ListeNavire">Navire</a>
                                <a href="${pageContext.request.contextPath}/ListeQuai">Quai</a>
                                <a href="${pageContext.request.contextPath}/ListeEscale">Escale</a>
                            </ul>
                        </div>
                    </li>

                    <% if (link.equalsIgnoreCase("inserer")) { %>
                    <li class="active">
                            <% } else { %>
                    <li>
                        <% } %>
                        <a href="#">Inserer</a><span></span>
                        <div class="dropdown">
                            <ul>
                                <a href="${pageContext.request.contextPath}/FormInsertNavire">Navire</a>
                                <a href="${pageContext.request.contextPath}/FormInsertQuai">Quai</a>
                                <a href="${pageContext.request.contextPath}/FormInsertEscale">Escale</a>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/Deconnexion">Deconnexion</a><span></span>
                    </li>
                </ul>
            </nav>
        </header>
        <main>
            <% if (_page.equalsIgnoreCase("liste_navire")) { %>
            <%@ include file="page/liste_navire.jsp" %>

            <% } else if (_page.equalsIgnoreCase("liste_quai")) { %>
            <%@ include file="page/liste_quai.jsp" %>

            <% } else if (_page.equalsIgnoreCase("liste_escale")) { %>
            <%@ include file="page/liste_escale.jsp" %>

            <% } else if (_page.equalsIgnoreCase("form_insert_navire")) { %>
            <%@ include file="page/form_insert_navire.jsp" %>

            <% } else if (_page.equalsIgnoreCase("form_insert_quai")) { %>
            <%@ include file="page/form_insert_quai.jsp" %>

            <% } else if (_page.equalsIgnoreCase("form_insert_escale")) { %>
            <%@ include file="page/form_insert_escale.jsp" %>

            <% } else if (_page.equalsIgnoreCase("liste_prestation_escale")) { %>
            <%@ include file="page/liste_prestation_escale.jsp" %>
            <% } %>
        </main>
    </body>
</html>
