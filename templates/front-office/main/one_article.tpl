<!--
    Page pour la selection d'un article comprenant la totalite de celui-ci avec ses commentaires
-->

{if $page|strstr:"select_one="}

<h3 class="text-center"><u>{$articles_one[0].title}</u></h3>

<div class="col-12 col-md-12 pb-5 artbb">
    <div class="row">
        <div class="col-md-8 offset-md-2 p-5 contours" style="background-color: rgb(255, 239, 220);">
            <p>{$articles_one[0].summary}</p>
            <p class="text-center">{$articles_one[0].username}</p>
            <p class="text-center">{$articles_one[0].date}</p>
        </div>
    </div>
</div>

<div class="col-12 col-md-12 p-2">
    <div class="row">
        <h3 class="text-center"><u>Commentaires</u></h3>

        {foreach $articles_one as $article_one}
        <div class="col-md-1">
        </div>

        <div class="col-md-4 p-5 contours" style="background-color: rgb(255, 239, 220);">
            <p>{$article_one.comment}</p>
            <img src="{$article_one.avatar}" width="25" height="25" />
            <p class="d-inline">{$article_one.pseudo}</p>
        </div>

        <div class="col-md-1">
        </div>
        {/foreach}

        {if empty($logged)}
        <div>
            <form class="col-6 offset-3 mt-5 text-center" method="POST" action="./?login">
                <textarea type="text" class="form-control" rows="10" cols="150" name="username" maxlength="600" placeholder="Entrez votre commentaire..." required></textarea>
                <button type="submit" class="next btn btn-outline-light mt-3 mb-5">Publier</button>
        </div>
        {else}
        <div>
            <form class="col-6 offset-3 mt-5 text-center" method="POST" action="./?login">
                <textarea type="text" class="form-control" rows="10" cols="50" name="new_summary" maxlength="600" placeholder="Entrez votre commentaire..." required></textarea>
                <input type="hidden" name="anti_csrf" value="{$anti_csrf}" />
                <input type="hidden" name="id_article" value="{$articles_one[0].id}" />
                <button type="submit" class="next btn btn-outline-light mt-3 mb-5">Publier</button>
            </form>
        </div>
        {/if}
    </div>
</div>

{/if}