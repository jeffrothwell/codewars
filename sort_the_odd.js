function sortArray(array) {
  var sortedOdds = array.filter(n => (n % 2 !== 0)).sort((a, b) => a - b)
  array.forEach((num, index) => {
    if (num % 2 !== 0) {
      array[index] = sortedOdds.splice(0,1)[0];
    }
  })
  return array;
}

console.log(sortArray([21,7,34,2,9,6,45,3]));
