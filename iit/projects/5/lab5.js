/* Lab 5 JavaScript File 
   Place variables and functions in this file */

function validate(formObj) {
  // put your validation code here
  // it will be a series of if statements
  
  if (formObj.firstName.value == "") {
    alert("You must enter a first name");
    formObj.firstName.focus();
    return false;
  }

  if (formObj.lastName.value == ""){
  	alert("You must enter a last name");
    formObj.lastName.focus();
    return false;
  }

  if (formObj.title.value == ""){
  	alert("You must enter a title");
    formObj.title.focus();
    return false;
  }

  if (formObj.org.value == ""){
  	alert("You must enter an organization name");
    formObj.org.focus();
    return false;
  }

  if (formObj.pseudonym.value == ""){
  	alert("You must enter a nickname");
    formObj.pseudonym.focus();
    return false;
  }

  if (formObj.comments.value == ""){
  	alert("Comments are not optional");
    formObj.comments.focus();
    return false;
  }

  else{
  	alert("Form has successfully been submitted!");
  	return true;
  }
  
}

function clearContents(element) {
  if (element.value == "Please enter your comments") {
  	element.value = '';
  }
}

function myAlert(){
	var formObj = document.getElementById('addForm');
	alert(formObj.firstName.value + " " + formObj.lastName.value + " is " + formObj.pseudonym.value);
}
