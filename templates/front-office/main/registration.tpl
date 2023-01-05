<!--
    Formulaire d'inscription
-->

{if $page === "registration"}

<h3 class="text-center"><u>Inscrivez-vous</u></h2>

<form class="col-6 offset-3 text-center" method="POST" action="./index.php">

    <input type="text" class="form-control my-2" name="pseudo" minlength="3" maxlength="25" placeholder="Pseudo" required />
    <input type="email" class="form-control my-2" name="email" maxlength="150" placeholder="pseudo@gmail.com" required />
    <input type="password" class="form-control my-2" name="pw_registration" id="password" minlength="8" placeholder="********" required />
    <input type="password" class="form-control my-2" name="password_bis" id="password_bis" minlength="8" placeholder="********" required />
    <div style="display: none;" id="progress_bar">
        <progress max="60" value="0"></progress>
        <span></span>
    </div>
    <div style="display: none;" id="error"></div>
    <p style="display: none;" id="error_bis">Les mots de passe ne correspondent pas.</p>
    <button class="next btn btn-outline-light mt-2 mb-5" type="submit" disabled="true">S'inscrire</button>

</form>

<script type="text/javascript" src="./assets/js/function/FETCH.js"></script>

<script type="text/javascript">

    var password, progress_bar, progress, span;
    password = document.querySelector('#password');
    progress_bar = document.querySelector('#progress_bar');
    progress = document.querySelector('progress');
    span = document.querySelector('span');

    password.onkeyup = function() {
        FETCH('includes/strength.php', ('password=' + password.value)).then(function(json) {
            progress_bar.style.display = "block";
            let note;
            note = json.note;
            if (note >= 10 && note <= 20) {
                progress.style.accentColor = "red";
                span.innerText = 'Faible';
            } else if (note >= 20 && note <= 40) {
                progress.style.accentColor = "orange";
                span.innerText = 'Moyen';
            } else if (note >= 40 && note <= 50) {
                progress.style.accentColor = "green";
                span.innerText = 'Fort';
            } else {
                progress_bar.style.display = "none";
            }
            progress.value = note;
        })
    }
</script>

<script type="text/javascript">

    var password_bis, error_bis;
    password_bis = document.querySelector('#password_bis');
    error_bis = document.querySelector('#error_bis');
    password_bis.onkeyup = function() {
        if (password.value === password_bis.value) {
            error_bis.style.display = "none";
            document.querySelector('button').removeAttribute('disabled');
        } else {
            error_bis.style.display = "block";
        }
    }
    
</script>

<script type="text/javascript">

    var hash;
    hash = document.location.hash;

    var div_error;
    div_error = document.querySelector('#error');

    if (hash === "#manque-minuscule") {

        div_error.style.display = 'block';
        div_error.innerText = "Il vous manque une minuscule";

    } else if (hash === "#manque-majuscule") {

        div_error.style.display = 'block';
        div_error.innerText = "Il vous manque une majuscule";

    } else if (hash === "#manque-chiffre") {

        div_error.style.display = 'block';
        div_error.innerText = "Il vous manque un chiffre";

    } else if (hash === "#manque-special") {

        div_error.style.display = 'block';
        div_error.innerText = "Il vous manque un caractere special";
    
    } else {

        div_error.style.display = 'none';

    }

</script>

{/if}