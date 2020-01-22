$(document).ready(function(){

	var myHeaders = new Headers();
	var miInit = { method: 'GET',
               mode: 'cors',
               headers: myHeaders,
               cache: 'default' };

	fetch('http://hierrodiseno.com/mipedido/public/api/getcategorias',miInit)
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

function getSubcategorias(id){
	fetch('http://hierrodiseno.com/mipedido/public/api/getcategorias',miInit)
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

}



