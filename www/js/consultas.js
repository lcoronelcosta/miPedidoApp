document.addEventListener('openPage', function(e){
	
});


window.onload = function() {
  window.localStorage.clear();
	/*var useragent = navigator.userAgent;
	var secretKey = 'ABCDEF123456';
	var f = new Date();
	var time = f.getFullYear() + "-" + (f.getMonth() +1) + "-" + f.getDate();
	var myHeaders = new Headers();
	var md5 = CryptoJS.AES.encrypt(secretKey, time, useragent);*/
	myHeaders = new Headers();
	/*myHeaders.append('Access-Control-Allow-Origin', '*');
	myHeaders.append('Accept', 'application/json');
	myHeaders.append('Access-Control-Allow-Headers', '*');*/

	var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default'
           	};

	fetch('http://mipedido.hierrodiseno.com/api/getcategorias', miInit)
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


/*$(document).ready(function(){
	window.localStorage.clear();
	/*var useragent = navigator.userAgent;
	var secretKey = 'ABCDEF123456';
	var f = new Date();
	var time = f.getFullYear() + "-" + (f.getMonth() +1) + "-" + f.getDate();
	var myHeaders = new Headers();
	var md5 = CryptoJS.AES.encrypt(secretKey, time, useragent);*/
	/*myHeaders = new Headers();


	var miInit = { method: 'GET',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://mipedido.hierrodiseno.com/api/getcategorias', miInit)
	.then(function(response) {
    return response.json();
	})

	.then(function(myJson) {

		const contenedor = document.getElementById('categorias');
		contenedor.innerHTML += `<div class="col-md-12">
										<div class="section-title">
											<h3 class="title">Categorias</h3>
										</div>
									</div>`;
		myJson.data.map((categoria) => {
            contenedor.innerHTML += `<div class="space"></div>
  
<div class="cover blend-soft-light align-center blue-800" style="background-image:url(${categoria.imagen})">
  <div class="space"></div>
  <h1 class="text-huge text-white text-light">Event On This Day</h1>
  <p class="text-small text-white text-light">
    ${categoria.nombre}
  </p>
  <div class="space"></div>
</div>`;
        });


		
	    console.log(myJson);
	});


});*/

/*function getSubcategorias(id){

    $.ajax({
        type: 'get',
        url: 'http://hierrodiseno.com/mipedido/public/api/getsubcategorias?id='+id,
        data: id,
        dataType: "json",
        beforeSend: function() {
            //$(".loading").css("display", "block");
        },
        success: function(data) {
            if(data.error){
                const contenedor = document.getElementById('categorias');
                myJson.data.map((data) => {
	            contenedor.innerHTML += `<div class="col-md-4 col-xs-6 btn" onclick="getSubcategorias(${categoria.id})">
	            							<div class="shop">
	            								<div class="shop-img">
	            									<img src="${categoria.imagen}" alt="">
	            								</div>
	            								<div class="shop-body">
	            									<h3>${categoria.nombre}</h3>	
	            								<a class="cta-btn">Pedir <i class="fa fa-arrow-circle-right"></i></a>
	            							</div>
	            						</div>`;
	        	});
            }
            else{
            }

        },
        error: function() {
            
        }
    });
}*/

function getSubcategorias(id){
	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://mipedido.hierrodiseno.com/api/getsubcategorias?id='+id,miInit)
	.then(function(response) {
    return response.json();
	})

	.then(function(myJson) {
		$('#categorias').html("");
		const contenedor = document.getElementById('categorias');
		contenedor.innerHTML += `<div class="col-md-12">
										<div class="section-title">
											<h3 class="title">Subcategorias</h3>
										</div>
									</div>`;
		myJson.data.map((dato) => {
            contenedor.innerHTML += `<div class="col-md-4 col-xs-6 btn" onclick="getProductos(${dato.id})">
            							<div class="shop">
            								<div class="shop-img">
            									<img src="${dato.imagen}" alt="">
            								</div>
            								<div class="shop-body">
            									<h3>${dato.nombre}</h3>	
            								<a class="cta-btn">Pedir <i class="fa fa-arrow-circle-right"></i></a>
            							</div>
            						</div>`;
        });

		
	    console.log(myJson);
	});

}


function getProductos(id){

	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://hierrodiseno.com/mipedido/public/api/getproductos?id='+id,miInit)
	.then(function(response) {
    return response.json();
	})

	.then(function(myJson) {
		$('#categorias').html("");
		const contenedor = document.getElementById('categorias');
		contenedor.innerHTML += `<div class="col-md-12">
										<div class="section-title">
											<h3 class="title">Productos</h3>
										</div>
									</div>`;
		myJson.data.map((dato) => {
			//var producto = JSON.stringify(dato);
			var producto = JSON.stringify(dato).replace(/\"/g,"&quot;")
            contenedor.innerHTML += `<div class="col-md-3 col-xs-6">
										<div class="product">
											<div class="product-img">
												<img src="${dato.imagen}" alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name"><a href="#">${dato.nombre}</a></h3>
												<h4 class="product-price">$ ${dato.precio}</h4>
												
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">Favorito</span></button>
													<button class="quick-view" onclick="verProducto(${dato.id});"><i class="fa fa-eye"></i><span class="tooltipp">Mas info</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn" onclick="agregarCarrito(${producto})"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
									</div>`;
        });

	    console.log(myJson);
	});

}


function agregarCarrito(dato){
	dato = JSON.stringify(dato);
	console.log("Dato2", dato);
	const contenedor = document.getElementById('cart-list');
	contenedor.innerHTML += `<div class="product-widget" id="producto-${dato.id}">
            							<input type="hidden" value="${dato.precio}" id="precio-${dato.id}" />
									    <div class="product-img">
									        <img src="${dato.imagen}" alt="">
									    </div>
									    <div class="product-body">
									        <h3 class="product-name"><a href="#">${dato.nombre}</a></h3>
									        <h4 class="product-price"><span class="qty">1x</span>${dato.precio}</h4>
									    </div>
									    <button onclick="deleteProductoCart(${dato.id}, ${dato.precio})" class="delete" "><i class="fa fa-close"></i></button>
									</div>`;

}

























function getProducto(id){
	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://hierrodiseno.com/mipedido/public/api/getproducto?id='+id,miInit)
	.then(function(response) {
    return response.json();
	})

	.then(function(dato) {
		var cantidad = aumentarCarrito(dato);
		//var subtotal = aumentarSubtotal(dato.precio);
		$('#qty').html(cantidad);
		$('#item-seleccionados').html(cantidad + ' Item(s) selected');
		//$('#subtotal-items').html('SUBTOTAL: $' + subtotal);
		const contenedor = document.getElementById('cart-list');

		$.each(localStorage, function(key, value){
			console.log(JSON.parse(value));
		  //console.log('objeto: ', JSON.parse(value));

		});

		//myJson.data.map((dato) => {
            contenedor.innerHTML += `<div class="product-widget" id="producto-${dato.id}">
            							<input type="hidden" value="${dato.precio}" id="precio-${dato.id}" />
									    <div class="product-img">
									        <img src="${dato.imagen}" alt="">
									    </div>
									    <div class="product-body">
									        <h3 class="product-name"><a href="#">${dato.nombre}</a></h3>
									        <h4 class="product-price"><span class="qty">1x</span>${dato.precio}</h4>
									    </div>
									    <button onclick="deleteProductoCart(${dato.id}, ${dato.precio})" class="delete" "><i class="fa fa-close"></i></button>
									</div>`;
        //});

	    console.log(dato);
	});

}

function deleteProductoCart(id, precio){
	console.log(id);
	var cantidad_actual = parseInt(window.localStorage.getItem("cantidad"));
	var total = cantidad_actual - 1;
	window.localStorage.setItem("cantidad", total);

	var cantidad = parseInt(window.localStorage.getItem("cantidad"));
	$("#producto-"+id).remove();
	$('#qty').html(cantidad);
	$('#item-seleccionados').html(cantidad + ' Item(s) selected');

	var total = parseFloat(window.localStorage.getItem("subtotal")) - parseFloat($("#precio-"+id).val());
	window.localStorage.setItem("subtotal", total);
	$('#subtotal-items').html('SUBTOTAL: $' + total);
	
}

function aumentarCarrito(dato){
	window.localStorage.setItem(dato.id, JSON.stringify(dato));
	var guardado = localStorage.getItem(dato.id);



	console.log('objetoObtenido: ', JSON.parse(guardado));

	if (window.localStorage.getItem("cantidad") === null) {
			window.localStorage.setItem("cantidad", 1);
	}
	else{
		var cantidad_actual = parseInt(window.localStorage.getItem("cantidad"));
		var total = cantidad_actual + 1;
		window.localStorage.setItem("cantidad", total);
	}
	var cantidad = parseInt(window.localStorage.getItem("cantidad"));
	return cantidad;
}

/*function aumentarSubtotal(precio){
	console.log(precio);
	if (window.localStorage.getItem("subtotal") === null) {
		window.localStorage.setItem("subtotal", precio);
	}
	else{
		var subtotal_actual = parseFloat(window.localStorage.getItem("subtotal"));
		var total = subtotal_actual + parseFloat(precio);
		window.localStorage.setItem("subtotal", total);
	}
	var subtotal = parseFloat(window.localStorage.getItem("subtotal"));
	return subtotal;
}*/

					
function generaQR(){
	jQuery(function(){
		jQuery('#categorias').qrcode("http://espol.edu.ec");
	})
}


function verProducto(id){
	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://hierrodiseno.com/mipedido/public/api/getproducto?id='+id,miInit)
	.then(function(response) {
    return response.json();
	})

	.then(function(dato) {
		var cantidad = aumentarCarrito(dato);
		var subtotal = aumentarSubtotal(dato.precio);
		console.log(subtotal);
		$('#qty').html(cantidad);
		$('#item-seleccionados').html(cantidad + ' Item(s) selected');
		$('#subtotal-items').html('SUBTOTAL: $' + subtotal);
		$('#categorias').html("");
		const contenedor = document.getElementById('categorias');
		//myJson.data.map((dato) => {
            contenedor.innerHTML += 
            `<div class="col-md-5 col-md-push-0">
							<div id="product-main-img">
								<div class="product-preview">
									<img src="${dato.imagen}" alt="">
								</div>
							</div>
			</div>
			<!-- /Product main img -->


			<!-- Product details -->
			<div class="col-md-5">
				<div class="product-details">
					<h2 class="product-name">${dato.nombre}</h2>
					<div>
						<h3 class="product-price">${dato.precio}</h3>
						<span class="product-available">In Stock</span>
					</div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

					<div class="add-to-cart">
						<div class="qty-label">
							Qty
							<div class="input-number">
								<input type="number">
								<span class="qty-up">+</span>
								<span class="qty-down">-</span>
							</div>
						</div>
						<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
					</div>

				</div>
			</div>
			<!-- /Product details -->

		</div>`;
        //});

	    console.log(dato);
	});
}




					





