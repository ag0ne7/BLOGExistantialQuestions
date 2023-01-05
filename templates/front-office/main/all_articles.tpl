<!--
    Page pour tous les articles
-->

{if $page === "all_articles"}

<h3 class="text-center"><u>Tous nos articles</u></h3>

<div class="col-12 col-md-12 p-2">
    <div class="row">
        {foreach $articles as $article}
        <div class="col-12 col-md-1 p-3 text-center">
        </div>

        <div class="col-12 col-md-4 p-4 mb-5 text-center contours" style="background-color: rgb(255, 239, 220);">
            <h4>{$article.title}</h4>
            <p>Rédigé par : <em>{$article.username}</em></p>
            <p>Fait le : {$article.date}</p>
            <a class="next btn btn-outline-light" href="./?select_one={$article.id}" title="" alt="">Voir l'article</a>
        </div>

        <div class="col-12 col-md-1 p-3 text-center">
        </div>
        {/foreach}
    </div>
</div>
{/if}