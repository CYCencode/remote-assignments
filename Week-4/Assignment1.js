// callback
const delayedResult = (n1, n2, delayTime, callback) => {
    setTimeout(() => { callback(n1 + n2) }, delayTime);
}

delayedResult(4, 5, 3000, function (result) {
    console.log(result);
});

// promise
const delayedResultPromise = (n1, n2, delayTime) => {
    return new Promise((resolve, reject) => {
        setTimeout(() => { resolve(n1 + n2) }, delayTime);
    })
}
delayedResultPromise(4, 5, 3000).then(console.log);

// async/await
async function main() {
    try {
        const result = await delayedResultPromise(4, 5, 3000);
        console.log(result);
    }
    catch (err) {
        console.log(err);
    }

}
main();