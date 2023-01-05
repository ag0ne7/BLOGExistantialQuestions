{if $page === "profil"}
    
    {if !empty($logged_users)}

        <h3 class="text-center"><u>Mettre à jour votre profil</u></h3>

        <form class="col-6 offset-3 text-center" method="POST" action="./index.php" enctype="multipart/form-data">
            <label for="pseudo">Votre Pseudo</label>
            <input type="text" class="form-control my-2" placeholder="{$update[0].pseudo}" name="new_username" minlength="3" maxlength="25" required />
            <label for="avatar">Votre Avatar</label>
            <input type="file" class="form-control my-2" value="" name="new_avatar" accept=".jpg, .jpeg, .png, .bmp" />
            <input type="hidden" name="anti_csrf" value="{$anti_csrf}" />
            <button type="submit" class="next btn btn-outline-light mt-3 mb-5">Mettre à jour</button>
        </form>

    {else}

        <h3 class="text-center"><u>Créer votre compte pour poursuivre</u></h3>

        {include file="./registration.tpl"}

    {/if}

{/if}