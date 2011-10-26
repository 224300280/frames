/*
* Input validation for signup form
*/

/*
*Check Name field is not empty.
*/
function checkName() { 
  	var init = document.getElementById("user_name");
 	 if (init.value == "") {
    	document.getElementById("nameSpan").style.visibility = "visible";
    	init.focus();
	    return false;
	} else 
		document.getElementById("nameSpan").style.visibility = "hidden";
		return true;
}


/*
*Check password field is not empty and password contains upper and 
*lowercase letters and at least one digit.
*/
function checkPass() {
	var second = document.getElementById("user_password");
	var testPass = /^\w*(?=\w*\d)(?=\w*[a-z])(?=\w*[A-Z])\w*$/;
	
	if ((!testPass.test(second.value)) || (second.value == "")) {
		document.getElementById("passSpan").style.visibility = "visible";
		return false;
	} else
		document.getElementById("passSpan").style.visibility = "hidden";
		return true;
}

/*
*Check both password entered are actually the same.
*/
function reCheck() {
	var third = document.getElementById("user_password");
	var second = document.getElementById("user_password_confirmation");
	
	if ((third.value == "")|| (third.value != second.value)) {
		document.getElementById("checkSpan").style.visibility = "visible";
		return false;
	} else
		document.getElementById("checkSpan").style.visibility = "hidden";
		return true;
}

/*
*Check email is in correct format.
*/
function checkEmail() {
	var fourth = document.getElementById("user_email");
	var testEmail = /^[a-z0-9_\+-]+(\.[a-z0-9_\+-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,4})/;
	if ((!testEmail.test(fourth.value)) || (fourth.value == "")) {
		document.getElementById("checkEmail").style.visibility = "visible";
		return false;
	} else
		document.getElementById("checkEmail").style.visibility = "hidden";
		return true;
}


function submit() {
	var init = document.getElementById("user_name");
	var second = document.getElementById("user_password");
	var third = document.getElementById("user_password_confirmation");
	var fourth = document.getElementById("user_email");
	var testPass = /^\w*(?=\w*\d)(?=\w*[a-z])(?=\w*[A-Z])\w*$/;
	var testEmail = /^[a-z0-9_\+-]+(\.[a-z0-9_\+-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,4})/;
	
 	 if (init.value == "") {
    	document.getElementById("nameSpan").style.visibility = "visible";
    	init.focus();
	    return false;
	} else 
	
	if ((!testPass.test(second.value)) || (second.value == "")) {
		document.getElementById("passSpan").style.visibility = "visible";
		second.focus();
		return false;
	} else
	
	if ((third.value == "")|| (third.value != second.value)) {
		document.getElementById("checkSpan").style.visibility = "visible";
		third.focus();
		return false;
	} else
	
	if ((!testEmail.test(fourth.value)) || (fourth.value == "")) {
		document.getElementById("checkEmail").style.visibility = "visible";
		fourth.focus();
		return false;
	} else 
	
	return true;
	
}











