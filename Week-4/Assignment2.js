/*
Complete the functions below to make AJAX call to a URL by GET method, and show the
response data on the page. You may render UI with any style.
*/
function ajax(src, callback) {
    const xhr = new XMLHttpRequest();
    xhr.open('GET', src);
    xhr.onreadystatechange = () => {
        if (xhr.readyState === 4 && xhr.status === 200) {
            const response = JSON.parse(xhr.responseText);
            return callback(response);
        }
    }
    xhr.send();
}
function render(data) {
    // document.createElement() and appendChild() methods are preferred.
    let divBlock = document.createElement('div');
    divBlock.style.width = "50vw";
    divBlock.style.height = "30vh";
    divBlock.style.position = "absolute";
    divBlock.style.top = "50%";
    divBlock.style.left = "50%";
    divBlock.style.transform = "translate(-50%,-50%)";
    divBlock.style.textAlign = "center";
    divBlock.style.padding = "2vw";
    divBlock.style.backgroundColor = "#FDEC95";
    document.body.appendChild(divBlock);
    try {
        for (let i = 0; i < data.length; i++) {
            let product = data[i];
            let pBlock = document.createElement('p');
            pBlock.textContent = `product : ${product.name}, price : ${product.price}, description : ${product.description}`;
            divBlock.appendChild(pBlock);
        }

    }
    catch (err) {
        divBlock.style.backgroundColor = "yellow";
        divBlock.textContent = err;
        divBlock.style.color = "red";
    }
}
ajax(
    'https://remote-assignment.s3.ap-northeast-1.amazonaws.com/products',
    function (response) {
        render(response);
    }
); // you should get product information in JSON format and render data in the page
