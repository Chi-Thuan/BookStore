document.addEventListener('DOMContentLoaded', function(){
	 /*
     * *  AJAX ADD BOOK TO CART
     */
    let listBookItem = document.querySelectorAll('a.btn-addToCart')
    let quantitySession = document.querySelector('#quantitySession')
    let wrap_cartSession = document.querySelector('.content-cart')
    let listBtnRemove = document.querySelectorAll('a.btn-remove')
    let listBtnRemoveOne = document.querySelectorAll('a.remove-one')
    
    let arrBook = []
    
    // tang san pham
    function handling_cartSS(e){
    	e.preventDefault()
		let url = `AddToCart?id=${this.dataset.id}&type=${this.dataset.type}`;
	    let xhr = new XMLHttpRequest();
	    
	    xhr.onreadystatechange = function() {
	        if(xhr.readyState == XMLHttpRequest.DONE) {
	        	let result = JSON.parse(this.responseText).cart
	        	quantitySession.innerHTML = result.length
	        	wrap_cartSession.innerHTML = ''
	        	for ( let i = 0; i < result.length; i++ ) {
	        		wrap_cartSession.innerHTML += `  <div class="cart-item">
	            <div class="avatar-cart">
	              <img src="./upload/images/${result[i].avatar}" alt="">
	            </div>
	            <div class="cart-item-content">
	              <div class="name">${result[i].nameBook} <p class="price-cart">${result[i].price} VND</p> </div>
	              <div class="quantity">
	                <span class="btnQuantity sub"><a href="#" data-type="removeOne" data-id="${result[i]._id}" class="remove-one">-</a></span>
	                <span class="content">${result[i].quantity}</span>
	                <span class="btnQuantity plus"><a href="#" data-id="${result[i]._id}" class="btn-addToCart">+</a></span>
	              </div>
	              <div class="remove" >
	                <a href="#" style="width : 100%;height : 100%; display: flex; justify-content:center; aglin-items: center" data-type="remove"  data-id="${result[i]._id}" class="btn-remove">x</a>
	              </div>
	            </div>
	          </div>`
				}
	        	let add_new_event = wrap_cartSession.querySelectorAll('a.btn-addToCart')
	        	 	add_new_event.forEach(item => {
	        		 item.addEventListener('click', handling_cartSS)
	        	 })
	        	 let add_removeOne_event = wrap_cartSession.querySelectorAll('a.remove-one')
	        	 	add_removeOne_event.forEach(item => {
	        		 item.addEventListener('click', handling_cartSS)
	        	 })
	        	 let add_remove_event = wrap_cartSession.querySelectorAll('a.btn-remove')
	        	 	add_remove_event.forEach(item => {
	        		 item.addEventListener('click', handling_cartSS)
	        	 })
	        }
	    }
	    
	    xhr.open('POST', url)
	    xhr.send()
    }
    
    listBookItem.forEach( bookItem => {
    	bookItem.addEventListener('click', handling_cartSS )
    })
    
    listBtnRemove.forEach( bookItem => {
    	bookItem.addEventListener('click', handling_cartSS )
    })
    
    listBtnRemoveOne.forEach( bookItem => {
    	bookItem.addEventListener('click', handling_cartSS )})
    
    
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
		        	 let list_event_new = wrap_cart.querySelectorAll('a.btn-addToCart')
		        	 list_event_new.forEach(item => {
		        		 item.addEventListener('click', handling_cartSS)
		        	 })
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
						<p><a href="#" data-id="${id}" class="btn-addToCart btn btn-primary btn-outline-primary">Add to Cart</a></p>
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
    
    
    /*
     *	THANH TOAN 
     */
    
    let btn_thanhToan = document.querySelector('.btnThanhToan')

    function handling_check(){
    	
    	let list_cart_item = document.querySelectorAll('.cart .cart-item')
    	if(list_cart_item.length > 0) {
    		let url = `checkThanhToan`
	        let xhr = new XMLHttpRequest()

	        xhr.onreadystatechange = function() {
	            if(xhr.readyState == XMLHttpRequest.DONE){
	            	let result = JSON.parse(this.responseText)
	            	if(result == false){
	            		let input_open_popup = document.querySelector('input[id="open_popup_thongBao"]')
	            		input_open_popup.checked = true
	            	}else{
	                    window.location.href="checkout"
	            	}
	            }
	        }

	        xhr.open('POST', url)
	        xhr.send()
    	}
    }

    btn_thanhToan.addEventListener('click', handling_check )
})