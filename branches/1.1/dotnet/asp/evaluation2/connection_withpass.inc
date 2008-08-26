<%
	Dim conn
	Dim RS
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.Open("Provider=SQLOLEDB.1;UID=sa;PWD=sa;Initial Catalog=evaluaton2;Data Source=10.0.0.100")
	Set RS = Server.CreateObject("ADODB.Recordset")
%>