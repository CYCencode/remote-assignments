const avg = (data) => {
    let avgPrice = data.products
        .reduce((total, current) => total + current.price, 0)
        / data.products.length;
    return avgPrice;
}
console.log(
    avg({
        size: 3,
        products: [
            {
                name: 'Product 1',
                price: 100,
            },
            {
                name: 'Product 2',
                price: 700,
            },
            {
                name: 'Product 3',
                price: 250,
            },
        ],
    })
); // should print the average price of all products