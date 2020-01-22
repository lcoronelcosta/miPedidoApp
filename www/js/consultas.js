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
											<h3 class="title">Categorias</h3>
										</div>
									</div>`;
		myJson.data.map((dato) => {
            contenedor.innerHTML += `<div class="col-md-4 col-xs-6 btn" onclick="getSubcategorias(${dato.id})">
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



