// JavaScript Document

/* This function checks the validation of Email
   Email must have @, dot and extension is 2 or 3 characters
 */
function EmailValid(EmailValue)
{
	var EMailIsValid = true;
	var SymbolAt = EmailValue.indexOf('@');
	var LastDotAt = EmailValue.lastIndexOf('.');
	var SpaceAt = EmailValue.indexOf(' ');
	var Length = EmailValue.length;

	// at least one @ must be present and not before position 2
	// @yahoo.com : not valid
	// abc@yahoo.com : valid
	if (SymbolAt < 1 )
	{
		EMailIsValid = false;
	}

	// at least one . (dot) afer the @ is required
	// abc@yahoo : not valid
	// abc.y@yahoo : not valid
	// abc@yahoo.com : valid
	if (LastDotAt < SymbolAt)
	{
		EMailIsValid = false;
	}

	// at least two characters [com, uk, fr, ...] must occur after the last . (dot)
	// abc.y@yahoo. : not valid
	// abc.y@yahoo.c : not valid
	// abc@yahoo.co : valid
	if (Length - LastDotAt <= 2)
	{
		EMailIsValid = false;
	}

	// no empty space " " is permitted (one may trim the email)
	// abc@yah oo.com : not valid
	if (SpaceAt != -1)
	{
		EMailIsValid = false;
	}

	if (EMailIsValid == false)
	{
		alert("Email is not valid!");
		document.frmRegister.txtEmail.focus();
	}
	
	return EMailIsValid;
}


/* This function checks the inputs in Form
 * If one of these inputs is Null then return false else return true
 * Parameter:	formId	- the ID of each input in Form (Ex: txtName, txtAddress)
 *				msg		- the message will display on alert box
 */
function isValid(frmId, msg)
{
	//If input is Null then display Message (message is define below)
	if (document.frmRegister[frmId].value == '')
	{
		alert(msg);
		document.frmRegister[frmId].focus();
		return false;
	}
	return true;
}

function validFrmRegister()
{		
	if (!isValid('txtName','Please Enter Your Name!'))
		return false;
	if (!isValid('txtEmail','Please Enter Your Email!'))
		return false;
	if (!isValid('txtAddress','Please Enter Your Address!'))
		return false;
	if (!isValid('txtTel','Please Enter Your Telephone!'))
		return false;
	if (!isValid('txtCardNo','Please Enter Your Credit Card Number!'))
		return false;	
}


/* This function checks Telephone number
   Telephone must be a number
 */
function CheckTel(inputString)
{
	if (isNaN(parseInt(inputString)))
	{
		alert("Telephone is not a number!");
		document.frmRegister.txtTel.focus();	
    }
}

/* This function compare re-enter password and password */
function ComparePassword(pass, repass)
{
	if (repass != pass)
	{
		alert("Re-enter Password is not match!");
		document.frmRegister.txtRePassword.focus();
	}
}