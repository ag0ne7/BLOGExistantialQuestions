<!--
    Formulaire de connexion
-->
{if $page === "login"}

    <h3 class="text-center"><u>Connectez-vous</u></h2>

    <form class="col-6 offset-3 text-center" method="POST" action="./?login">
        <input type="text" class="form-control my-2" name="pseudo" minlength="3" maxlength="25" required placeholder="Pseudo" />
        <input type="password" class="form-control my-2" name="password" autocomplete="off" minlength="8" required placeholder="Mot de passe" />
        <button class="next btn btn-outline-light mt-2 mb-5" type="submit">Connexion</button>
    </form>

{/if}