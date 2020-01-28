document.addEventListener('openPage', function(e){
	var url = "home.html";
	$(location).attr('href',url);
})

function functionOpenContact(params){
  document.getElementById('name').value = params.name;
}