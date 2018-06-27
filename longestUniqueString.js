function longest(s1, s2) {
  const fullStringArraySorted = s1.concat(s2).split("").sort()
  return fullStringArraySorted.filter((letter, index, array) => {
    return letter !== array[index - 1];
  }).join('');
}

console.log(longest("aretheyhere", "yestheyarehere"));
