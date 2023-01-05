<article class="container" id="last_articles">

    <h3 class="text-center"><u>Nos 4 derniers articles</u></h3>

    {foreach $articles_limit as $article_limit}
    <div class="col-12 p-2">
        <div class="col-md-8 offset-md-2 p-5 mt-2 mb-3 text-center contours" style="background-color: rgb(255, 239, 220);">
            <h4>{$article_limit.title}</h4>
            <p class="mt-3">Rédigé par : <em>{$article_limit.username}</em></p>
            <p>Le : {$article_limit.date}</p>
            <a class="next btn btn-outline-light" href="./?select_one={$article_limit.id}" title="" alt="">Voir l'article</a>
        </div>
    </div>
    {/foreach}
    <div class="col-md-6 offset-md-6 mb-5 text-center">
        <a class="next btn btn-outline-light bgarticles" href="./?all_articles" title="" alt="">Voir tous nos articles</a>
    </div> 

</article>