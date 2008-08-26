// JavaScript Document
<script language="javascript">
function messageWindow(title,url)

{
  //url="InPhieuDiemSanPhamTheoCongDoanSanXuat.asp?MaThanhVien="+form1.MaThanhVien.value;
  var height=screen.height;
    var width=screen.width;

	//content="status,menubar,scrollbars,height=" + height + ",width=" + width +")";
	//var newWindow = window.open(url,"msgWindow",content);
  var newWindow = window.open(url,"msgWindow", "status,menubar,scrollbars,height=600,width=800");

	newWindow.focus( );
}
</script>