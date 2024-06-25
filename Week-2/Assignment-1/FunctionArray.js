/* 
    1. max: find the max value of an array of numbers
    2. findPosition: find the first position of the target number inside an array of numbers.
    The position should be counted starting from 0, if you can't find the target, please return -1
*/

// solution1: for-loop version
const max = (numbers) => {
    //check if the array contains any number
    if (numbers.length === 0) {
        return null;
    }
    let maxNum = numbers[0];
    for (let idx = 1; idx < numbers.length; idx++) {
        if (numbers[idx] > maxNum) {
            maxNum = numbers[idx];
        }
    }
    return maxNum;
}
// solution2: reduce version
/* const max = (numbers) => {
    let maxNum = numbers.reduce((maxNum, currentNum) => {
        if (currentNum > maxNum) {
            return currentNum
        } return maxNum
    }, 0)
    return maxNum
}
*/

function findPosition(numbers, target) {
    for (let idx = 0; idx < numbers.length; idx++) {
        if (numbers[idx] === target) {
            return idx;
        }
    } return -1
}

console.log(max([1, 2, 4, 5])); // should print 5
console.log(max([5, 2, 7, 1, 6])); // should print 7
console.log(findPosition([5, 2, 7, 1, 6], 5)); // should print 0
console.log(findPosition([5, 2, 7, 1, 6], 7)); // should print 2
console.log(findPosition([5, 2, 7, 7, 7, 1, 6], 7)); // should print 2 (the first position)
console.log(findPosition([5, 2, 7, 1, 6], 8)); // should print -1
