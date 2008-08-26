<!--#INCLUDE FILE="clsUpload.asp"-->
<%
Dim objUpload
Dim strFileName
Dim strPath
session("filename")=""

' Instantiate Upload Class
Set objUpload = New clsUpload

' Grab the file name
strFileName = objUpload.Fields("File1").FileName
session("filename") = strFileName

' Compile path to save file to
strPath = Server.MapPath("Uploads") & "\" & strFileName

' Save the binary data to the file system
objUpload("File1").SaveAs strPath

' Release upload object from memory
Set objUpload = Nothing
%>
<%
	Response.Redirect("new_manager.asp")
%>
'File has been saved in file system.

'View this file:<BR><%=session("filename")%>



