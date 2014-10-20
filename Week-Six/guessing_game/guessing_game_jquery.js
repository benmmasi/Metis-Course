$(function(){
  $("#cat").click(cat);
  $("#dog").click(dog);
});

function cat(){
  console.log("wrong");
  var resultElement = $("#result");
  resultElement.text("wrong");
}

function dog(){
  console.log("right");
  var resultElement = $("#result");
  resultElement.text("right")
}
 
