<main class="container">

    <section class="row">

        <!--
            Page d'accueil : affichage du top articles et des 4 derniers articles ajoutes
        -->

        {include file="./main/home.tpl"}

        <!--
            Page pour la selection d'un article comprenant la totalite de celui-ci, avec ses commentaires
        -->

        {include file="./main/one_article.tpl"}

        <!--
            Page pour tous les articles
        -->

        {include file="./main/all_articles.tpl"}

        <!--
            Formulaire de connexion
        -->

        {include file="./main/connexion.tpl"}

        <!--
            Formulaire d'inscription
        -->

        {include file="./main/registration.tpl"}

        <!--
            Redirection pour la validation de l'inscription
        -->

        {include file="./main/validation.tpl"}

        <!--
            Formulaire d'update pseudo et avatar
        -->

        {include file="./main/update_profil.tpl"}

        <!--
            A porpos de nous
        -->

        {include file="./main/about_us.tpl"}


    </section>

</main>