<%
	Dim conn
	Dim RS
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.Open("Provider=SQLOLEDB.1;UID=sa;PWD=sa; Initial Catalog=evaluation2;Data Source=.")
	Set RS = Server.CreateObject("ADODB.Recordset")
%>