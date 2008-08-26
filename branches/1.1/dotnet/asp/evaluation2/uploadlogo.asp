<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>upload file</title>
</head>

<body>
<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connection.inc" -->

 <%       ' if (session("trangthai")=true) then
            Dim objUpload
			Dim strFileName,FName 
			Dim strPath
			FName = Request.QueryString("idcp")
			session("filename")= ""

			dim fs
			set fs=Server.CreateObject("Scripting.FileSystemObject")          

			' Instantiate Upload Class
			Set objUpload = New clsUpload
			' Grab the file name
			strFileName = objUpload.Fields("file1").FileName
			if (right(strFileName,4))=".gif" or (right(strFileName,4))=".jpg" or (right(strFileName,4))=".png"  then
						
			session("filename") = strFileName
			' Compile path to save file to
			strPath = Server.MapPath("doanhnghiep")&"\"&FName&"\"&strFileName
			'Save the binary data to the file system
			objUpload("file1").SaveAs strPath
			' Release upload object from memory
			set objUpload = Nothing
			sqlupdate ="update [guest] set Logo=N'doanhnghiep\"&FName&"\"&strFileName&"' where idguest='"&FName&"'"
			'sqlupdate=sqlupdate & "' where mathietbi='"&Request.QueryString("MaThietBi")&"'"
			conn.execute sqlupdate
			'File has been saved in file system.
			 'Response.Write  strFileName
			 'Response.Write  "</br>" 
			 'Response.Write  strPath
			 'Response.Write  "</br>" 
			 'Response.Write  Server.MapPath("Gioithieu")
			' Response.Write  "</br>" 
			 'Response.Write  sqlupdate
			 session("error")="Cập nhật thành công"
			'Response.Redirect("Sua.asp?loai=ThietBi&MaThietBi="&Request.QueryString("MaThietBi") )
			'Response.Redirect("Sua.asp?loai=DoanhNghiep&MaDoanhNghiep="&session("ma_dn"))
			 Response.Redirect("trangchu.asp")
			else
			  session("error")="Không đúng định dạng! Bạn phải chọn file khác"
			  Response.Write(session("error"))
			  'Response.Redirect("Sua.asp?loai=DoanhNghiep&MaDoanhNghiep="&session("ma_dn"))
			  
			end if
			
			
  %>

</body>
</html>
