const btnDangNhap = document.getElementById('id-btndangnhap');
const pwUser = document.getElementById('id-dangnhapmatkhau');
const emailUser = document.getElementById('id-dangnhapemail');




function kiemTraValEmail(){
   let email = emailUser.value;
    if(email == ''||!email.match('^[0-9a-zA-Z\.]{1,}\@gmail\.com$')){
        emailUser.classList.remove('is-valid');
        emailUser.classList.add('is-invalid');
        return false;
    }
    else {

        emailUser.classList.remove('is-invalid');
        emailUser.classList.add('is-valid');
        return true;
    }
}

function kiemTraValMatKhau(){
    
    if(pwUser.value == ''){
        pwUser.classList.remove('is-valid');
        pwUser.classList.add('is-invalid');
        return false;
    }
    else {

        pwUser.classList.remove('is-invalid');
        pwUser.classList.add('is-valid');
        return true;
    }
}
emailUser.onblur =  kiemTraValEmail;
pwUser.onblur =  kiemTraValMatKhau;

function handleDangNhap(){
    if(kiemTraValEmail() && kiemTraValMatKhau()){    

        return true;
        
    }
    
    return false;
   

}

btnDangNhap.onclick = handleDangNhap;