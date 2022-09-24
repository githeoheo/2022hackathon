"use strict";
// TODO: login 기능을 구현해야함. 우선 형태만 갖춰놓은 상태

const loginInput = document.querySelector("#to_login_form input")
con
const loginBtn = document.querySelector("#to_login_form")

const HIDDEN_CLASSNAME = "hidden"
const USERNAME_KEY = "username"

function loginsubmit(event){
    event.preventDefault()
    console.log(event)

}

function moveToMain(){
    location.replace("index.html");
}
loginInput.addEventListener('submit',loginsubmit);
loginBtn.addEventListener('click',moveToMain);