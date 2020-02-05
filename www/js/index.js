window.onload = function() {
    /*Carrito*/
    myObj = {
      "total":0,
      "cantidad":0,
      "subtotal": 0,
      "iva": 0,
      "detalle":[]
     }
    localStorage.setItem('carrito', JSON.stringify(myObj));
    localStorage.setItem('cantidad', '0');
}

document.addEventListener('openPage', function(e){
	
});

function functionOpenContact(params){
  document.getElementById('name').value = params.name;
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

    fetch('http://mipedido.hierrodiseno.com/api/getuser?email='+email, miInit)
    //fetch('http://localhost:8000/api/getuser?email='+email, miInit)
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