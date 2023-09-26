function removeStars(s: string): string {
  // let chars = s.split('')
  // let result :string[]= []
  // let strLen :number = s.length
  // for(let itr =0; itr < strLen; itr++) {
  //   if(chars[itr] === '*') {
  //     result.pop()
  //   }
  //   else {
  //     if(chars[itr]) result.push(chars[itr])
  //   }
  // }

  // return result.join('')

  let result: string = "";
  let skip: number = 0;
  for (let itr = s.length - 1; itr >= 0; itr--) {
    if (s[itr] === "*") {
      skip++;
    } else if (skip > 0) {
      skip--;
    } else {
      result = s[itr] + result;
    }
  }
  return result;
}
