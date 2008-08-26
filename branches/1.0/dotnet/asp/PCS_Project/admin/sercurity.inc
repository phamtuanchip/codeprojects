
<%
if (!Session("login")) {
	Session.Abandon();
	Response.Redirect("../login.asp");
	}
else {
	if(Session("quyen") !=1){
		Response.Redirect("../login.asp");
	}
}
%>
