function getQuerystring(key, default_) {
    if (default_ == null)
        default_ = "";
    key = key.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
    var regex = new RegExp("[\\?&amp;]"+key+"=([^&amp;#]*)");
    var qs = regex.exec(window.location.href);
    if(qs == null)
        return default_;
    else
        return qs[1];
};

document.addEventListener('openPage', function(e){
	
});


window.onload = function() {

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
	//fetch('http://mipedido.hierrodiseno.com/api/getcategorias', miInit)
	fetch('http://localhost:8000/api/getcategorias', miInit)
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


	//fetch('http://mipedido.hierrodiseno.com/api/getbanners', miInit)
	fetch('http://localhost:8000/api/getbanners', miInit)
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

    //fetch('http://mipedido.hierrodiseno.com/api/getsubcategorias?id='+id, miInit)
    fetch('http://localhost:8000/api/getsubcategorias?id='+id, miInit)
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

    //fetch('http://mipedido.hierrodiseno.com/api/getproductos?id_subcategoria='+id, miInit)
    fetch('http://localhost:8000/api/getproductos?id_subcategoria='+id, miInit)
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
               cache: 'default'
                };

    //fetch('http://mipedido.hierrodiseno.com/api/getproducto?id='+id, miInit)
    fetch('http://localhost:8000/api/getproducto?id='+id, miInit)
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
    console.log('PRODUCTO:', producto);
    producto.cantidad = document.getElementById('cant-'+id).value;
    console.log('PRODUCTO:', producto);
    if (localStorage.getItem("carrito") === null) {
    	var carrito = {};
		localStorage.setItem("carrito", JSON.stringify(carrito));
		carrito = JSON.parse(localStorage.getItem('carrito'));
		carrito.id = producto;
		localStorage.setItem("carrito", JSON.stringify(carrito));
	}
	else{
		carrito = JSON.parse(localStorage.getItem('carrito'));
		carrito.id = producto;
		localStorage.setItem("carrito", JSON.stringify(carrito));
	}

	console.log(localStorage.getItem("carrito"));
    //localStorage.setItem('carrito', JSON.stringify(producto));
    swal("Su producto fue agregado con exito!")
    .then((value) => {
        var cant = document.getElementById('cant-'+id).value;
        if (cant = 0) {
            backPage();
        }
    });
}

function validaForm() {
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    if (!email.length && !password.length) {
        swal("Por favor ingrese los datos!");
    }else if (!email.length) {
        swal("Por favor ingrese su email!");
    }else if(!password.length){
        swal("Por favor ingrese su password!");
    }else{
        //swal("EXITO!");
        validarUser(email, password);
    }
    
}

function validarUser(email, password) {
    myHeaders = new Headers();

    var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

    //fetch('http://mipedido.hierrodiseno.com/api/getproducto?id='+id, miInit)
    fetch('http://localhost:8000/api/getuser?email='+email, miInit)
    .then(function(response) {
        return response.json();
    })

    .then(function(myJson) {

        if (Object.keys(myJson).length <= 0) {
            swal("Usuario no registrado!");
        }
        else{
            //const contenedor = document.getElementById('productos-details');
            myJson.data.map((user) => {
                console.log('1', password);
                console.log('2', user.clave);
                if (user.clave != password ) {
                    swal("Password Incorrecto!");
                }
                else{
                    localStorage.setItem('datos_user', JSON.stringify(myJson));
                    window.location='home.html';
                }
            
            });
        }
        console.log(myJson);
    });
}
