/*
Find the position of the target number inside an array of numbers. 
If the array was Sorted already,there is a algorithm called Binary Search which can do this job efficiently. 
*/
const binarySearchPosition = (numbers, target) => {
    let left = 0;
    let right = numbers.length - 1;
    let pointer;
    while (left <= right) {
        pointer = parseInt((left + right) / 2)
        if (numbers[pointer] === target) {
            return pointer;
        }
        else if (numbers[pointer] < target) {
            left = pointer;
        } else {
            right = pointer;
        }
    }
}
console.log(binarySearchPosition([1, 2, 5, 6, 7], 1)); // should print 0
console.log(binarySearchPosition([1, 2, 5, 6, 7], 6)); // should print 3
