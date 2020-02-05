window.onload = function() {

	renderCarrito("1");
	/*Usuario*/
	var user = JSON.parse(localStorage.getItem('datos_user'));
	const contenedor = document.getElementById('perfil');
	user.data.map((usuario) => {
	    contenedor.innerHTML += `<img class="avatar circle border-white shadow" src="${usuario.imagen}">
							        <h1 class="text-teal-300">${usuario.nombre}</h1>
							        <p class="text-grey">${usuario.email}</p>`;
    });

	/*Fin Usuario*/

	myHeaders = new Headers();
	var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default'
           	};
	fetch('http://mipedido.hierrodiseno.com/api/getcategorias', miInit)
	//fetch('http://localhost:8000/api/getcategorias', miInit)
	.then(function(response) {
		console.log(response);
    return response.json();
	})
	.then(function(myJson) {
		const contenedor = document.getElementById('categorias');
		myJson.data.map((categoria) => {
            contenedor.innerHTML += `<div class="space"></div> 
										<div onclick="openPage('subcategorias', {id:'${categoria.id}'}, functionOpenSubcategorias)" class="cover blend-soft-light align-center blue-800" style="background-image:url(${categoria.imagen})">
									  		<div class="space"></div>
									  		<h1 class="text-huge text-white text-light">${categoria.nombre}</h1>
									  	<div class="space"></div>
									</div>`;
        });
	    console.log(myJson);
	});


	fetch('http://mipedido.hierrodiseno.com/api/getbanners', miInit)
	//fetch('http://localhost:8000/api/getbanners', miInit)
	.then(function(response) {
		console.log(response);
    return response.json();
	})
	.then(function(myJson) {
		const contenedor = document.getElementById('banners');
		myJson.data.map((banner) => {
            contenedor.innerHTML += `<div class="swiper-slide text-white align-center cover black-opacity-30 blend-soft-light" style="background-image:url(${banner.imagen})">
							            <h2>${banner.titulo}</h2>
							            <div class="bottom margin-bottom text-shadow padding">
							              ${banner.descripcion}
							            </div>
							         </div>`;
        });
	    console.log(myJson);
	});
};


document.addEventListener('openPage', function(e){
	
});

function functionOpenSubcategorias(params){
	renderCarrito("2");
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' 
           	};

    fetch('http://mipedido.hierrodiseno.com/api/getsubcategorias?id='+id, miInit)
    //fetch('http://localhost:8000/api/getsubcategorias?id='+id, miInit)
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
	renderCarrito("3");
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

    fetch('http://mipedido.hierrodiseno.com/api/getproductos?id_subcategoria='+id, miInit)
    //fetch('http://localhost:8000/api/getproductos?id_subcategoria='+id, miInit)
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
	renderCarrito("4");
    var id = params.id;
    myHeaders = new Headers();


    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default'
                };

    fetch('http://mipedido.hierrodiseno.com/api/getproducto?id='+id, miInit)
    //fetch('http://localhost:8000/api/getproducto?id='+id, miInit)
    .then(function(response) {
    return response.json();
    })

    .then(function(myJson) {

        const contenedor = document.getElementById('productos-details');
        myJson.data.map((producto) => {
        var productoJson =  JSON.stringify(producto).replace(/\"/g,"&quot;");   
        contenedor.innerHTML += `<div class="item">
							        <div class="left"><img class="avatar circle" src="${producto.imagen}"></div>
							        <h2>${producto.nombre}</h2>
							     </div>
							     <div class="item full"><img src="${producto.imagen}"></div>
							     <div class="item text-grey-600">PRECIO: $${producto.precio}</div>
							     <div class="item">
								    <input type="number" placeholder="Cantidad" id="cant-${producto.id}">
                                    <button class="blue full radius margin-bottom" onclick="agregarCarrito(${producto.id}, ${productoJson});">Agregar a Pedido</button>
								 </div>`;
        });
        console.log(myJson);
    });
}

function agregarCarrito(id, producto){
	carrito = JSON.parse(localStorage.getItem('carrito'));
	producto.cantidad = parseInt(document.getElementById('cant-'+id).value);
	producto.total = parseFloat(producto.precio) * producto.cantidad;
	var error = false;
	cont = 0; idAux=0;
	carrito.detalle.map((carro) => {
        if (carro.id == id) {
        	error = true;
        	idAux=cont;
        }
        cont++;
    });
    if (error) {
    	carrito.detalle[idAux]['cantidad'] = producto.cantidad;
    	carrito.detalle[idAux]['precio'] = producto.total;
    }
    else{
		carrito.detalle.push(producto);    	
    }

	localStorage.setItem('carrito', JSON.stringify(carrito));
    //localStorage.setItem('carrito', JSON.stringify(producto));
    swal("Su producto fue agregado con exito!")
    .then((value) => {
        var cant = document.getElementById('cant-'+id).value;
        if (cant >= 0) {
            backPage();
            renderCarrito("1");
			renderCarrito("2");
			renderCarrito("3");
			renderCarrito("4");
			renderCarrito("5");
        }
    });
}

function renderCarrito(id){
	// JSON con distintos valores para utilizar en la demo
	var carrito = JSON.parse(localStorage.getItem('carrito'));
	     
	var cant = 0;
	carrito.detalle.map((carro) => {
        cant = cant+carro.cantidad;
    });
	document.getElementById('cant-carro'+id).innerHTML = "";
	const contenedorCarro = document.getElementById('cant-carro'+id);

    contenedorCarro.innerHTML += `<span class="icon-badge text-small red radius padding">${cant}</span>
        <button class="icon ion-ios-cart-outline"></button>`;
}

function functionOpenCar(){
	renderCarrito("5");
	var carrito = JSON.parse(localStorage.getItem('carrito')); 
	var total = 0;
	var subtotal = 0;
    const contenedor = document.getElementById('detalle-carrito');
    carrito.detalle.map((carro) => {
    subtotal = subtotal + carro.total;	
    contenedor.innerHTML += `<div class="item">
						        <div class="left">
						          <img class="avatar circle" src="${carro.imagen}">
						        </div>
						        <h2>Jeanette Fletcher</h2>
						        <p class="text-grey">${carro.cantidad} x $${carro.precio}</p>
						        <div class="right">
						          <small class="text-grey">
						            $${carro.total}
						            <i class="icon ion-android-happy green"></i>
						          </small>
						        </div>
						      </div>`;
    });	

    total = subtotal * 1.12;
    console.log(total);
    console.log(subtotal);
    document.getElementById('totalCarrito').innerHTML = parseFloat(total).toFixed(2);
    document.getElementById('subTotalCarrito').innerHTML = parseFloat(subtotal).toFixed(2);
    iva = parseFloat(total).toFixed(2) - parseFloat(subtotal).toFixed(2);

    contenedor.innerHTML += `<div class="item">  
                                <button class="blue full radius margin-bottom" onclick="openPage('qr', functionGenerateQR)">Generar QR</button>
							 </div>`;

}

function functionGenerateQR(){
	var carrito = JSON.parse(localStorage.getItem('carrito')); 
	var total = 0;
	var subtotal = 0;
	var idpedido = '';
    carrito.detalle.map((carro) => {
    	subtotal = subtotal + carro.total;	
    });	

    total = subtotal * 1.12;
    iva = total - subtotal;
    subtotal = parseFloat(subtotal).toFixed(2);
    total = parseFloat(total).toFixed(2);
    iva = parseFloat(iva).toFixed(2);
	user = JSON.parse(localStorage.getItem('datos_user'));
	var url = 'http://mipedido.hierrodiseno.com/api/addpedido';
	var data = {id_usuario: user.data[0]['id'],
				id_estado_pedido: 1,
				subtotal: subtotal,
				iva: iva,
				total: total};

	fetch(url, {
	  method: 'POST', // or 'PUT'
	  body: JSON.stringify(data), // data can be `string` or {object}!
	  headers:{
	    'Content-Type': 'application/json'
	  }
	}).then(res => res.json())
	.catch(error => console.error('Error:', error))
	.then(function (response){
		idpedido = response.id;

		var carrito = JSON.parse(localStorage.getItem('carrito'));
		var cant = 0;
		carrito.detalle.map((carro) => {
	        var data2 = {
	        	id_pedido: idpedido,
				id_producto: carro.id,
				precio: parseFloat(carro.precio).toFixed(2),
				cantidad: carro.cantidad,
				total: total
			};
			fetch('http://mipedido.hierrodiseno.com/api/adddetallepedido', {
			  method: 'POST', // or 'PUT'
			  body: JSON.stringify(data2), // data can be `string` or {object}!
			  headers:{
			    'Content-Type': 'application/json'
			  }
			}).then(res => res.json())
			.catch(error => console.error('Error:', error))
			.then(function (response){
				console.log(response);
			});
	    });
		

		$('#codigoGenerado').qrcode('http://mipedido.hierrodiseno.com/admin/mp_pedido/edit/'+idpedido+'?return_url=http%3A%2F%2Fmipedido.hierrodiseno.com%2Fadmin%2Fmp_pedido&parent_id=&parent_field=');
		
	});
	
	
}