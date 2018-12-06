$("#login-button").click(function() {
  $("#login-button").fadeOut("slow", function() {
    $("#main-container").fadeIn();
    TweenMax.from("#main-container", 0.4, { scale: 0, ease: Sine.easeInOut });
    TweenMax.to("#main-container", 0.4, { scale: 1, ease: Sine.easeInOut });
  });
});

$(".close-btn").click(function() {
  TweenMax.from("#main-container", 0.4, { scale: 1, ease: Sine.easeInOut });
  TweenMax.to("#main-container", 0.4, {
    left: "0px",
    scale: 0,
    ease: Sine.easeInOut
  });
  $("#container, #forgotten-container").fadeOut(800, function() {
    $("#login-button").fadeIn(800);
  });
});

/* Forgotten Password */
$("#forgotten").click(function() {
  $("#main-container").fadeOut(function() {
    $("#forgotten-container").fadeIn();
  });
});
