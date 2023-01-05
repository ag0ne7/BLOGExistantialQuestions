<!--
    Page d'accueil : affichage du top articles et des 4 derniers articles 
-->

{if $page === ""}

{include file="./top_articles.tpl"}

{include file="./last_4_articles.tpl"}

{/if}