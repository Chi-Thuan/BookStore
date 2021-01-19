  document.addEventListener('DOMContentLoaded', function(){
	  
	  let page_login = document.querySelector('.page-login')
	  if(page_login != null){
		  let listTxtInputRegister = document.querySelectorAll('.wrap-form .register .txt_input')
	        let btnSubmitRegister = document.querySelector('.wrap-form .register .btnRegister')
	        let inputEmailFormLogin = document.querySelectorAll('.wrap-form .login input.txt_input')

	        // set thong bao loi
	        function setMessError(element, mess){
	            element.parentElement.querySelector('.show-error').innerHTML =  mess
	        }

	        function checkNameRegister(txt, input) {
	            if(txt.length != 0) {
	                if(txt.length < 8) {
	                    input.classList.add('error')
	                    setMessError(input, 'Tên phải trên 8 ký tự !!!')
	                }else{
	                    input.classList.remove('error')
	                }
	            } else {
	                input.classList.add('error')
	                setMessError(input, 'Vui lòng nhập tên !!!')
	            }
	        }

	        function checkEmailRegister(txt, inputElement){
	            let regexEmail = /[a-zA-Z0-9.]+@.[a-zA-Z]+\.com/g
	            if(txt.length != 0){
	                if(!regexEmail.test(txt)){
	                    inputElement.classList.add('error')
	                    setMessError(inputElement, 'Sai định dạng email !!!')
	                }else{
	                    inputElement.classList.remove('error')
	                }
	            }else{
	                inputElement.classList.add('error')
	                setMessError(inputElement, 'Vui lòng nhập email !!!')
	            }
	        }

	        function checkPhone(txt, inputElement) {
	            let regexEmail = /((09|03|07|08|05)+([0-9]{8})\b)/g
	            if(txt.length != 0){
	                if(!regexEmail.test(txt)){
	                    inputElement.classList.add('error')
	                    setMessError(inputElement, 'Sai định dạng số điện thoại !!!')
	                }else{
	                    inputElement.classList.remove('error')

	                }
	            }else{
	                inputElement.classList.add('error')
	                setMessError(inputElement, 'Vui lòng nhập số điện thoại !!!')
	            }
	        }

	        function checkPassword(txt, inputElement) {
	            let inputRePass = document.querySelector('.wrap-form .register input[name="RePassword"]')
	            if(txt.length != 0){
	                if(txt.length < 8){
	                    inputElement.classList.add('error')
	                    setMessError(inputElement, 'Mật khẩu phải dài hơn 8 ký tự !!!')
	                }else{
	                    inputElement.classList.remove('error')
	                    checkRePassword(txt, inputRePass.value, inputRePass )
	                }
	            }else{
	                inputElement.classList.add('error')
	                setMessError(inputElement, 'Vui lòng nhập mật khẩu !!!')
	            }
	        }

	        function checkRePassword(txtPass, txtRepass, inputElement) {
	            if(txtRepass.length != 0){
	                if(txtRepass !== txtPass){
	                    inputElement.classList.add('error')
	                    setMessError(inputElement, 'Mật khẩu không khớp !!!')
	                }else{
	                    inputElement.classList.remove('error')
	                }
	            }else{
	                inputElement.classList.add('error')
	                setMessError(inputElement, 'Vui lòng nhập lại mật khẩu !!!')
	            }
	        }

	        listTxtInputRegister.forEach(inputItem => {
	            inputItem.addEventListener('keyup', function(){
	                let typeInput = this.getAttribute('name')
	                let value = this.value
	                switch (typeInput) {
	                    case 'fullName':
	                        checkNameRegister(value, this)
	                        break;
	                    case 'email':
	                        checkEmailRegister(value, this)
	                        break;
	                    case 'phone':
	                        checkPhone(value, this)
	                        break;
	                    case 'fullName':
	                        checkNameRegister(value, this)
	                        break;
	                    case 'password':
	                        checkPassword(value, this)
	                        break;
	                    case 'RePassword':
	                        let inputPass = document.querySelector('.wrap-form .register input[name="password"]').value
	                        checkRePassword(inputPass, value, this)
	                        break;
	                    default:
	                        break;
	                }
	                
	            })
	        })

	        btnSubmitRegister.addEventListener('click', function(e){
	            for(let i = 0; i< listTxtInputRegister.length; i ++) {
	                if(listTxtInputRegister[i].classList.contains('error')){
	                    e.preventDefault()
	                    break;
	                }
	            }
	            e.stopPropagation();
	        })

	        inputEmailFormLogin.forEach(input => {
	          input.addEventListener('keyup', function(){
	            inputEmailFormLogin[0].classList.remove('error') // chi add class error cho 1 input
	          })
	        })
	  }
	  
	  /*
	   *	PAGE CHECKOUT 
	   */
	  
	  let wrap_page_checkout = document.querySelector('.page-checkout')
	  if(wrap_page_checkout != null) {
		  let btn_submit= wrap_page_checkout.querySelector('.btn-submit-thanhtoan')
		  
		  function handling_checkout(){
			  alert('Thanh Toán Thành Công')
			  	let url = 'ClearCart';
			    let xhr = new XMLHttpRequest()
	
			    xhr.onreadystatechange = function(){
			      if(xhr.readyState == XMLHttpRequest.DONE) {
			    	  window.location.href="checkout"
			      }
			    }
	
			    xhr.open('POST', url)
			    xhr.send()
		  }
		  
		  btn_submit.addEventListener('click', handling_checkout )
	  }
	  
 })// end