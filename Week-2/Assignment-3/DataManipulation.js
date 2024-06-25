/*
    1. count: return an object which shows the count of each character.
    2. groupByKey: return an object which shows the summed-up value of each key.
    This time, you may get letters from ‘a’ to ‘z’, try to avoid using ‘if’ or ‘switch’ to split each
    letter into different cases (e.g. if(letter == ‘a’) {…} else if (letter == ‘b’) {…} ), otherwise, your
    code will be very long.
    Note:
    1. The input format is different for these two functions.
    2. In the second function, the input may have the same key but different values, the
    output should have each key only once.
*/

//count function : use reduce
const count = (input) => {
    let output = input
        .reduce((obj, target) => {
            // init : if target undifined(0), set as one, others equal current number plus one 
            obj[target] = (obj[target] || 0) + 1;
            return obj;
        }, {})
    return output;
}

let input1 = ["a", "b", "c", "a", "c", "a", "x"];
console.log(count(input1)); // should print {a:3, b:1, c:2, x:1}

//groupByKey function : use for-of (more readable)
const groupByKey = (input) => {
    let output = {};
    for (let item of input) {
        output[item.key] = (output[item.key] || 0) + item.value;
    }
    return output;
}

//groupByKey function : use reduce
/* const groupByKey = (input) => {
    let output = input
        .reduce((obj, current)=>{
                obj[current.key] = (obj[current.key] || 0) + current.value;
                return obj
        }, {})
    return output;
}
*/
let input2 = [
    { key: "a", value: 3 },
    { key: "b", value: 1 },
    { key: "c", value: 2 },
    { key: "a", value: 3 },
    { key: "c", value: 5 },
];
console.log(groupByKey(input2)); // should print {a:6, b:1, c:7}