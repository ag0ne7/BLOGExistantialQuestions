<header class="container">

    <h2 class="text-center"><strong><u>Existential Questions</u></strong></h2>

    <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
        <a class="navbar-brand" href="./" title="">Accueil</a>

        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarLinks" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarLinks">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="./?all_articles" title="" alt="">Nos articles</a>
                </li>

                {if empty($logged_users)}
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Espace utilisateur
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <li><a class="dropdown-item" href="./?registration" title="" alt="">Vous inscrire</a></li>
                        <li><a class="dropdown-item" href="./?login" title="" alt="">Vous connecter</a></li>
                    </ul>
                </li>
                {/if}

                {if !empty($logged_users)}
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">Espace personnel
                    </a>  
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                        <li><a class="dropdown-item" href="./?profil" title="" alt="">Modifier votre profil</a></li>
                        <li><a class="dropdown-item" href="./?deconnexion" title="" alt="">Déconnexion</a></li>
                    </ul>
                </li>
                {/if}
                
                <li class="nav-item">
                    <a class="nav-link" href="./?about-us" title="" alt="">À propos de nous</a>
                </li>
            </ul>
        </div>
    </nav>

</header>