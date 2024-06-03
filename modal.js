// modal.js

function showModal(button) {
    var box = button.closest('.box');
    var id = box.getAttribute('data-id');
    var name = box.getAttribute('data-name');
    var price = box.getAttribute('data-price');
    var image = box.getAttribute('data-image');
    var description = box.getAttribute('data-description');

    document.getElementById('modalImage').src = image;
    document.getElementById('modalName').textContent = name;
    document.getElementById('modalPrice').textContent = "$" + price;
    document.getElementById('modalDescription').textContent = description;
    
    document.getElementById('itemModal').style.display = "block";

    var addToCartBtn = document.getElementById('addToCartBtn');
    addToCartBtn.setAttribute('data-id', id);
}

function closeModal() {
    document.getElementById('itemModal').style.display = "none";
}

document.getElementById('addToCartBtn').addEventListener('click', function() {
    var itemId = this.getAttribute('data-id');
    alert('Item ' + itemId + ' added to cart');
});

window.onclick = function(event) {
    var modal = document.getElementById('itemModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
