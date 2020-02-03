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