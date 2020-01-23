$(document).ready(function(){
	/*var useragent = navigator.userAgent;
	var secretKey = 'ABCDEF123456';
	var f = new Date();
	var time = f.getFullYear() + "-" + (f.getMonth() +1) + "-" + f.getDate();
	var myHeaders = new Headers();
	var md5 = CryptoJS.AES.encrypt(secretKey, time, useragent);*/
	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://hierrodiseno.com/mipedido/public/api/getcategorias', miInit)
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

		
	    console.log(myJson);
	});


});

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

	fetch('http://hierrodiseno.com/mipedido/public/api/getsubcategorias?id='+id,miInit)
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
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">Mas info</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn" onclick="getProducto(${dato.id})"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
									</div>`;
        });

	    console.log(myJson);
	});

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
		const contenedor = document.getElementById('cart-list');
		//myJson.data.map((dato) => {
            contenedor.innerHTML += `<div class="product-widget" id="producto-${dato.id}">
									    <div class="product-img">
									        <img src="${dato.imagen}" alt="">
									    </div>
									    <div class="product-body">
									        <h3 class="product-name"><a href="#">${dato.nombre}</a></h3>
									        <h4 class="product-price"><span class="qty">1x</span>${dato.precio}</h4>
									    </div>
									    <button class="delete" onclick="deleteProductoCart(${dato.id})"><i class="fa fa-close"></i></button>
									</div>`;
        //});

	    console.log(dato);
	});

}

function deleteProductoCart(id){
	console.log(id);
	$("#producto-"+id).remove();
}

					




