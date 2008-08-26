<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
					
var sql;
				
%>
				   
<%				
					sql= "insert into HANGSANXUAT (ten_hang_sx) values"
					sql = sql + "(N'" + Request.Form("tenhang") + "')"; 
			
					
						
						oConn.Execute (sql);
				
						Response.Redirect("agency.asp");				
						
				
				%>

</body>
</html>
