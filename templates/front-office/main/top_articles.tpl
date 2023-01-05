<article class="row" id="top_articles">

    <h3 class="text-center"><u>Nos articles favoris</u></h3>

    <div class="col-12 col-md-1 p-2">
        <div class="col-md-6 offset-md-3 p-2">
        </div>
    </div>

    <div class="col-12 col-md-5 p-2">
        <div class="col-md-12 p-5 mt-2 mb-3 text-center contours" style="background-color: rgb(255, 239, 220);">
            <h4><strong>{$articles[3].title}</strong></h4>
            <p class="mt-3">Rédigé par : <em>{$articles[3].username}</em></p>
            <p>Le : {$articles[3].date}</p>
            <a class="next btn btn-outline-light" href="./?select_one={$articles[3].id}" title="" alt="">Voir l'article</a>
        </div>
    </div>

    <div class="col-12 col-md-5 p-2">
        <div class="col-md-12 p-5 mt-2 mb-3 text-center contours" style="background-color: rgb(255, 239, 220);">
            <h4><strong>{$articles[10].title}</strong></h4>
            <p class="mt-3">Rédigé par : <em>{$articles[10].username}</em></p>
            <p>Le : {$articles[10].date}</p>
            <a class="next btn btn-outline-light" href="./?select_one={$articles[10].id}" title="" alt="">Voir l'article</a>
        </div>
    </div>

    <div class="col-12 col-md-1 p-2">
        <div class="col-md-6 offset-md-3 p-2"></div>
    </div>

</article>