<%
	var oConn;
// Tao chuoi ket noi
	oConn = Server.CreateObject("ADODB.Connection");
	
// Thiet lap cac doi tuong Connection va Recordset
	 oConn.Open("Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=pcs_data; Data Source=.");	
	rs = Server.CreateObject("ADODB.Recordset");
%>