<%@ page import="model.Profil" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%
  ArrayList<Profil> allProfils = (ArrayList<Profil>) request.getAttribute("allProfils");
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
    <% if(allProfils != null) { %>
    <main>
      <h1>Selection profil</h1>
      <div class="container">
        <form action="${pageContext.request.contextPath}/ControllerProfil" method="get">
          <div class="field">
            <label for="nom_profil">nom_profil</label>
            <select name="id_profil" id="nom_profil" required>
              <% for (Profil profil : allProfils) { %>
              <option value="<%= profil.getId() %>"><%= profil.getNom_profil() %></option>
              <% } %>
            </select>
          </div>
          <div class="field">
            <button>Valider</button>
          </div>
        </form>
      </div>
    </main>
    <% } else {
      response.sendRedirect("ControllerProfil");
    }%>
  </body>
</html>
<style>
  main {
    width: 50%;
  }

  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

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