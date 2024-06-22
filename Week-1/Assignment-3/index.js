// count how many ‘a’ and ‘b’ letters are in the given input and return the total number.
const countAandB = (input) => {
    let output = input.filter((char) => char === "a" || char === "b");
    return output.length;
}
// convert English letters to numbers, let ‘a’ to be 1, ‘b’ to be 2, and so on.
const toNumber = (input) => {
    let output = input.map((char) => {
        return char.charCodeAt(0) - 96;
    });
    return output;
}
let input1 = ['a', 'b', 'c', 'a', 'c', 'a', 'c'];
console.log(countAandB(input1)); // should print 4 (3 ‘a’ letters and 1 ‘b’ letter)
console.log(toNumber(input1)); // should print [1, 2, 3, 1, 3, 1,3]
let input2 = ['e', 'd', 'c', 'd', 'e'];
console.log(countAandB(input2)); // should print 0
console.log(toNumber(input2)); // should print [5, 4, 3, 4, 5]