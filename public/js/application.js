$(document).ready(function() {
	//model=new Model
  // view=new View();
  bindEvents();
});


function bindEvents(){
	$("#pictureadd").on("click",addPicture)
}

function addPicture(e){
  event.preventDefault(e);
  var img= $("#imgtoadd").attr("src")
  var urlToGoTo="/pictures?url=" + img

  var dataRequest = $.ajax({
    url: urlToGoTo,
    type: 'POST',
    data:$(this).serialize()
  });

  dataRequest.done(window.location.href = urlToGoTo)
}


