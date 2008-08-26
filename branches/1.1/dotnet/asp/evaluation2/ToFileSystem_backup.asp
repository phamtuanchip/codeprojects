<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<meta http-equiv="Content-Type" content="text/html;  charset=utf-8" />


<!--#INCLUDE FILE="clsUpload.asp"-->
<!--#include file="connection.inc" -->

 <%       ' if (session("trangthai")=true) then
            Dim objUpload
			Dim strFileName
			Dim strPath
			session("filename")= ""
			
          
			' Instantiate Upload Class
			Set objUpload = New clsUpload
			' Grab the file name
			strFileName = objUpload.Fields("file1").FileName
			if (right(strFileName,4))=".htm" or (right(strFileName,4))=".html" then
						
			session("filename") = strFileName
			' Compile path to save file to
			strPath = Server.MapPath(".")&"\"&strFileName
			'Save the binary data to the file system
			objUpload("file1").SaveAs strPath
			' Release upload object from memory
			set objUpload = Nothing
			sqlupdate ="update doanhnghiep set http=N'"&strFileName&"' where madoanhnghiep='"&session("ma_dn")&"'"
			'sqlupdate=sqlupdate & "' where mathietbi='"&Request.QueryString("MaThietBi")&"'"
			conn.execute sqlupdate
			'File has been saved in file system.
			 Response.Write  strFileName
			 Response.Write  "</br>" 
			 Response.Write  Server.MapPath(".")
			 Response.Write  "</br>" 
			 Response.Write  sqlupdate
			 session("error")="C?p nh?p thành công"
			'Response.Redirect("Sua.asp?loai=ThietBi&MaThietBi="&Request.QueryString("MaThietBi") )
			Response.Redirect("Sua.asp?loai=DoanhNghiep&MaDoanhNghiep="&session("ma_dn"))
			
			else
			  session("error")="Không dúng d?nh d?ng!"
			  Response.Redirect("Sua.asp?loai=DoanhNghiep&MaDoanhNghiep="&session("ma_dn"))
			  
			end if
			
			
  %>
