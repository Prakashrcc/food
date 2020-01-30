<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Style all input fields */
input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #4CAF50;
  color: white;
}

/* Style the container for inputs */
.container {
  background-color: #f1f1f1;
  padding: 20px;
  max-width: 50%;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}



/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}


</style>
</head>
<body>

<h3>Email and Password Validation</h3>
<p>Try to submit the form.</p>

<div class="container">
  <form >
    <label for="usrname">Email</label>
    <input type="text" id="email" name="email" required>
    <p id="letter1" style="display: none; text-align: right;" class="invalid"><b>valid</b> Email</p>

    <label for="psw">Password</label>
    <input type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
    
     <p id="letter2" style="display: none; text-align: right;" class="invalid"><b>valid</b> Password</p>

    <input type="submit" value="Submit">
  </form>
</div>

<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
				
<script>
var myEmail= document.getElementById("email");
var myInput = document.getElementById("psw");
var letter2 = document.getElementById("letter2");
var letter1 = document.getElementById("letter1");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

myEmail.onfocus = function() {
  document.getElementById("letter1").style.display = "block";
}
myEmail.onkeyup = function(){
	var rate="@";
    if(myEmail.value.match(rate)){
   		 if(myEmail.value.match(".com")||myEmail.value.match(".in")){
    		letter1.classList.remove("invalid");
    		letter1.classList.add("valid");
        }
     }

}



// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
  document.getElementById("letter2").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var a=0,b=0,c=0,d=0;
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("invalid");
    letter.classList.add("valid");
    a=1;
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
    a=0
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("invalid");
    capital.classList.add("valid");
    b=1;
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
    b=0;
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("invalid");
    number.classList.add("valid");
    c=1;
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
    c=0;
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
    d=1;
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
    d=0;
  }
  if(a==1&&b==1&&c==1&&d==1){
  	letter2.classList.remove("invalid");
    letter2.classList.add("valid");
  }
}
</script>

</body>
</html>
