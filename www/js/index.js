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
               cache: 'default' 
           	};

    fetch('http://mipedido.hierrodiseno.com/api/getsubcategorias?id='+id, miInit)
    .then(function(response) {
    return response.json();
    })

    .then(function(myJson) {

        const contenedor = document.getElementById('list-subcategorias');
        myJson.data.map((subcategoria) => {
        contenedor.innerHTML += `<div class="space"></div> 
                                        <div onclick="openPage('productos', {id:'${subcategoria.id}'}, functionOpenProductos)" class="cover align-center" style="background-image:url(${subcategoria.imagen})">
                                            <div class="space"></div>
                                            <h1 class="text-huge text-white text-light">${subcategoria.nombre}</h1>
                                        <div class="space"></div>
                                    </div>`;
        });


        
        console.log(myJson);
    });
}


function functionOpenProductos(params){
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

    fetch('http://mipedido.hierrodiseno.com/api/getproductos?id_subcategoria='+id, miInit)
    .then(function(response) {
    return response.json();
    })

    .then(function(myJson) {

        const contenedor = document.getElementById('list-productos');
        myJson.data.map((producto) => {
        contenedor.innerHTML += `<div class="item" onclick="openPage('details_producto', {id:'${producto.id}'}, functionOpenProducto)">
							        <div class="left">
							          <img class="avatar circle" src="${producto.imagen}">
							        </div>
							        <h2>${producto.nombre}</h2>
							        <div class="right">
							          <small class="text-grey">$${producto.precio}</small>
							        </div>
							      </div>`;
        });

        console.log(myJson);
    });
}

function functionOpenProducto(params){
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

    fetch('http://mipedido.hierrodiseno.com/api/getproducto?id='+id, miInit)
    .then(function(response) {
    return response.json();
    })

    .then(function(myJson) {

        const contenedor = document.getElementById('productos-details');
        myJson.data.map((producto) => {
        contenedor.innerHTML += `<div class="item">
							        <div class="left"><img class="avatar circle" src="${producto.imagen}"></div>
							        <h2>${producto.nombre}</h2>
							     </div>
							     <div class="item full"><img src="${producto.imagen}"></div>
							     <div class="item text-grey-600">${producto.descripcion}</div>
							     <div class="item">
								    <input type="number" placeholder="Cantidad">
								    <button class="blue radius full">Agregar a Pedido</button>
								 </div>`;
        });
        console.log(myJson);
    });
}