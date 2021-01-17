document.addEventListener('DOMContentLoaded', function(){
	 /*
     * *  AJAX ADD BOOK TO CART
     */
    let listBookItem = document.querySelectorAll('a.btn-addToCart');
    let quantitySession = document.querySelector('#quantitySession')
    let wrap_cartSession = document.querySelector('.content-cart')
    
    let arrBook = []
    
    listBookItem.forEach( bookItem => {
    	bookItem.addEventListener('click', function(e){
    		e.preventDefault()
    		let url = `AddToCart?id=${this.dataset.id}`;
		    let xhr = new XMLHttpRequest();
		    
		    xhr.onreadystatechange = function() {
		        if(xhr.readyState == XMLHttpRequest.DONE) {
		        	let result = JSON.parse(this.responseText).cart
		        	quantitySession.innerHTML = result.length
		        	wrap_cartSession.innerHTML = ''
		        	console.log(result)
		        	for ( let i = 0; i < result.length; i++ ) {
		        		wrap_cartSession.innerHTML += `  <div class="cart-item">
		            <div class="avatar-cart">
		              <img src="./upload/images/${result[i].avatar}" alt="">
		            </div>
		            <div class="cart-item-content">
		              <div class="name">${result[i].nameBook} <p class="price-cart">${result[i].price} VND</p> </div>
		              <div class="quantity">
		                <span class="btnQuantity sub">-</span>
		                <span class="content">${result[i].quantity}</span>
		                <span class="btnQuantity plus">+</span>
		              </div>
		              <div class="remove" >
		                x
		              </div>
		            </div>
		          </div>`
					}
		        }
		    }
		
		    xhr.open('POST', url)
		    xhr.send()
    	})
    })
})