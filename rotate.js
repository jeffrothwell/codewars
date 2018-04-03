var myArray = ["foo", "bar", "baz", "quux"]

function rotate(array){
  var first = array.shift();
  array.push(first);
}

console.log("Array before rotate:");
console.log(myArray);
rotate(myArray);
console.log("Array after rotate:");
console.log(myArray);
