// Given an array, find the int that appears an odd number of times.
// There will always be only one integer that appears an odd number of times.

function findOdd(A) {
  let counts = {}
  A.forEach(n => {
    if (!counts[n]) {
      counts[n] = 1
    } else {
      counts[n] += 1
    }
  })
  for (var n in counts) {
    if (counts[n] % 2 !== 0) {
      return n
    }
  }
}

console.log(findOdd([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]));
