// Function to filter and display products based on the selected category
function filterAndDisplayProducts(selectedCategory) {
    // Filter the products array from cart.js based on the selected category
    const filteredProducts = products.filter(product => {
        // If no category is selected, show all products
        if (selectedCategory === '') {
            return true;
        }
        // Compare the product category with the selected category
        return product.nature && product.nature.type === selectedCategory;
    });

    // Get the root container
    const root = document.getElementById('root');

    // Display the filtered products in the root container
    root.innerHTML = filteredProducts.map(product => {
        const { image, title, price } = product;
        return (
            `<div class="box">
                <div class="img-box">
                    <img src="${image}" alt="${title}">
                </div>
                <div class="left">
                    <p>${title}</p>
                    <h2>${price}</h2>
                    <button class="button-style">SEE PREVIEW<span class="span-effect"></span></button>
                </div>
            </div>`
        );
    }).join('');

    // Reapply hover effects to the new buttons
    document.querySelectorAll('.button-style').forEach(button => {
        button.addEventListener('mouseenter', function() {
            const span = button.querySelector('.span-effect');
            span.style.width = '100%';
        });

        button.addEventListener('mouseleave', function() {
            const span = button.querySelector('.span-effect');
            span.style.width = '0%';
        });
    });
}

// Event listener for dropdown change
document.getElementById('categoryFilter').addEventListener('change', function() {
    // Get the selected category from the dropdown
    const selectedCategory = this.value;
    
    // Call the function to filter and display products
    filterAndDisplayProducts(selectedCategory);
});

// Initial display of all products
// Display all products when the page loads by calling the function with an empty category
filterAndDisplayProducts('');
