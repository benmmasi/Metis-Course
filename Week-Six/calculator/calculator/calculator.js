function calculate(){
  var valueLeft = Number(document.getElementById("left").value);
  var valueRight = Number(document.getElementById("right").value);
  var operator = document.getElementById("operator").value;
  var resultElement = document.getElementById("result");

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

  resultElement.innerText = result;
  return false;
}
