window.onload = function() {

    /*Usuario*/
    var user = JSON.parse(localStorage.getItem('datos_user'));
    var cant = JSON.parse(localStorage.getItem('cantidad'));
    const contenedor = document.getElementById('perfil');
    user.data.map((usuario) => {
        contenedor.innerHTML += `<img class="avatar circle border-white shadow" src="${usuario.imagen}">
                                    <h1 class="text-teal-300">${usuario.nombre}</h1>
                                    <p class="text-grey">${usuario.email}</p>`;
    });

    const contenedorCarro = document.getElementById('cant-carro');
    contenedorCarro.innerHTML += `<span class="icon-badge text-small red radius padding" id="cant-carro">${cant}</span>
        <button class="icon ion-ios-cart-outline"></button>`

    /*Fin Usuario*/
};