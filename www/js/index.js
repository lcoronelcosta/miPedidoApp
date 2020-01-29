document.addEventListener('openPage', function(e){
	
});

function functionOpenContact(params){
  document.getElementById('name').value = params.name;
}

function functionOpenSubcategorias(params){
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

    fetch('http://mipedido.hierrodiseno.com/api/getsubcategorias?id='+id, miInit)
    .then(function(response) {
    return response.json();
    })

    .then(function(myJson) {

        const contenedor = document.getElementById('list-subcategorias');
        myJson.data.map((categoria) => {
        contenedor.innerHTML += `<div class="space"></div> 
                                        <div onclick="openPage('subcategorias', {id:'${categoria.id}'}, functionOpenSubcategorias)" class="cover align-center" style="background-image:url(${categoria.imagen})">
                                            <div class="space"></div>
                                            <h1 class="text-huge text-white text-light">${categoria.nombre}</h1>
                                        <div class="space"></div>
                                    </div>`;
        });


        
        console.log(myJson);
    });
}