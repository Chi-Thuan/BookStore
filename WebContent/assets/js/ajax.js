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
    
    /*
     *	LOAD MORE 
     */
    let page_product = document.querySelector('.page-product')
    
	if(page_product != null) {
	    let btn_load_more = page_product.querySelectorAll('.btn-load-more')
	    function handling_loadMore(e){
	        e.preventDefault()
	        removeActive()
	        this.parentElement.classList.add('active')
	        let { indexcurrent, typepage } = this.dataset
	        let url = `page?typepage=${typepage}&current=${indexcurrent}`
	        let xhr = new XMLHttpRequest()
	        
	        xhr.onreadystatechange = function() {
	        	 if(xhr.readyState == XMLHttpRequest.DONE) {
	        		let wrap_cart = page_product.querySelector('#wrap-render-product')
	        		wrap_cart.innerHTML=''
		        	let result = JSON.parse(this.responseText)
		        	 let b=result.reduce((t,item)=>(t+=renderCartItem(item._id, item.avatar, item.nameBook, item.description, item.price)),'')
		        	 wrap_cart.innerHTML=b
	        	 }
	        }
	
	        xhr.open('POST', url)
	        xhr.send()
	    }
	    
	    function renderCartItem(id, avatar, title, des, price){
	    	return `<div class="col-md-4">
    		<div class="menu-entry">
					<a href="product?id=${id}" class="img" style="background-image: url(./upload/images/${avatar}); background-size: 190px 190px "></a>
					<div class="text text-center pt-4">
						<h3><a href="product-single.html">${title}</a></h3>
						<p class="des-book">${des}</p>
						<p class="price"><span>${price} VND</span></p>
						<p><a href="cart.html" data-id="${id}" class="btn-addToCart btn btn-primary btn-outline-primary">Add to Cart</a></p>
					</div>
				</div>
		</div>`
	    }
	    
	    function removeActive(){
	    	  let list_li = page_product.querySelectorAll('li.li_item')
	    	  console.log(list_li)
	    	  list_li.forEach(item => {
	    		  item.classList.remove('active')
	    	  })
	    }
	
	    btn_load_more.forEach(btn_item => {
	        btn_item.addEventListener('click', handling_loadMore )
	    })
	}	
})