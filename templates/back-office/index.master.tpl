<!DOCTYPE html>

<html lang="fr">

    <head>

        <meta charset="utf-8" />

        <meta name="author" content="" />

        <meta name="copyright" content="" />

        <meta name="description" content="" />

        <meta name="keywords" content="" />

        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <link rel="icon" type="image/png" href="" />

        <link rel="stylesheet" type="text/css" href="./../assets/framework/css/bootstrap.min.css?version=5.1.3" />

        <title></title>

    </head>

    <body>

        <header class="container-fluid">

            <nav class="row">

            </nav>

        </header>

        <main class="container-fluid">

            <section class="row">

                {if !empty($logged_admins)}

                <h2>PANNEL D'ADMINISTRATION</h2>

                <form class="col-6 offset-3 text-center" method="POST" action="./?login">

                    <input type="text" class="form-control my-2" name="username" maxlength="25" required />
                    <input type="password" class="form-control my-2" name="password" autocomplete="off" minlength="8" required />
                    <button type="submit" class="btn btn-primary">Connexion</button>

                </form>
                {else}

                <form class="col-6 offset-3 text-center" method="POST" action="./?insert_article">

                    <input type="text" class="form-control my-2" name="title" maxlength="100" required />
                    <input type="text" class="form-control my-2" name="summary" required />
                    <input type="hidden" name="anti_csrf" value="{$anti_csrf}" />
                    <button type="submit" class="btn btn-primary">Publier un article</button>

                </form>
                {/if}

            </section>

        </main>

        <footer class="container-fluid">
            
            <div class="row">

            </div>

        </footer>

    </body>

</html>
