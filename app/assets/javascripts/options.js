//Hover para mostrar las opciones en cada foto
$(document).ready(function(){
  $(".my_image").hover(function(){
    $(".options").toggleClass("hidden");
  });

  $(".delete-btn").click(function(){
    $(".options-image").removeClass("hidden");
  });

  $(".exit-btn").click(function(){
    $(".options-image").addClass("hidden");
  });
});
