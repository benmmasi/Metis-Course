$(function(){
  $("#theForm").submit(calculate);
});


function calculate(){
  var valueLeft = Number($("#left").val());
  var valueRight = Number($("#right").val());
  var operator = $("#operator").val();
  var resultElement = $("#result");

  if( operator === "+"){
    var result = valueLeft + valueRight;
  } else if( operator === "-"){
    var result = valueLeft - valueRight;
  } else if( operator === "*"){
    var result = valueLeft * valueRight
  } else if( operator === "/"){
    var result = valueLeft / valueRight
  } else if( operator ==="**"){
    var result = Math.pow(valueLeft, valueRight)
  } else {
    var result = "Hey, you can't do that!"
  }

  resultElement.text(result);
  return false;
}

