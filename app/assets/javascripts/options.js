//Hover para mostrar las opciones en cada foto
$(document).ready(function(){
  $(".my_image").hover(function(){
      $(".options").toggleClass("hidden");
  });
});
