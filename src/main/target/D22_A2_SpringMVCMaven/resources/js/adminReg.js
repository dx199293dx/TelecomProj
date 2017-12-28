 function varifyConfirmPass(){
		var conPass = doucument.getElementById("confirm_password").value;
		var pass = document.getElementById("password").value;
		if(conPass!=pass){
			doucument.getElementById("conPassError").innerHTML="Two input password must be consistent"
		}
	}
