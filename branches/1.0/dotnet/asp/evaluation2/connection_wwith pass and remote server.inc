<%
	Dim conn
	Dim RS
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.Open("Provider=SQLOLEDB.1;User ID=sa;Password=sa;Initial Catalog=evaluaton2;Data Source=10.0.0.102")
	Set RS = Server.CreateObject("ADODB.Recordset")
%>