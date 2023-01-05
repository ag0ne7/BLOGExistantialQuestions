// 'async' transforme une fonction synchrone par nature en asynchrone

async function FETCH(chemin, corps) {

    let response;

    // 'await' reste en attente d'une instruction asynchrone

    response = await fetch(
        chemin,
        {
            method: 'POST',
            body: corps,
            // imite le comportement d'un formulaire HTML classique
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            }
        }
    );

    let data;
    data = await response.json();
    
    return data;

}