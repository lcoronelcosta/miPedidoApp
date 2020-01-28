document.addEventListener('openPage', function(e){
	var url = "home.html";
	$(location).attr('href',url);
})

function functionOpenSubcategorias(params){
  $id = params.id;
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
                const contenedor = document.getElementById('sub-categorias');
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
}