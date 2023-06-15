<%@ page contentType="text/html;charset=UTF-8" %>
<h1>Ajouter quai</h1>
<div class="container">
    <form action="${pageContext.request.contextPath}/AddQuai" method="post">
        <div class="field">
            <label for="nom_quai">nom_quai</label>
            <input type="text" name="nom_quai" id="nom_quai" placeholder="nom_quai" required>
        </div>
        <div class="field">
            <label for="profondeur">profondeur</label>
            <input type="number" name="profondeur" id="profondeur" placeholder="profondeur" required>
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