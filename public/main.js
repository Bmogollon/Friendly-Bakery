$('#login-button').click(function(){
  $('#login-button').fadeOut("slow",function(){
    $("#main-container").fadeIn();

});

$(".close-btn").click(function(){
  $("#main-container, #feedback-container").fadeOut(800, function(){
    $("#login-button").fadeIn(800);
  });
});


$('#feedback').click(function(){
  $("#main-container").fadeOut(function(){
    $("#feedback-container").fadeIn();
  });
});
});
