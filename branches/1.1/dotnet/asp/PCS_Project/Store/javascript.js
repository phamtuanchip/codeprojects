<script language="javascript">
function currentdate()
{ homnay= new Date();
  ngay=homnay.getDate();
  if (ngay <10) ngay="0"+ngay;
	thang=homnay.getMonth()+1;
	if (thang <10) thang="0"+thang;
	  nam=homnay.getYear();
  HienNgay.ngay.value=ngay+"/"+thang+"/"+nam;
}
 function chonngay(form)
				 { 
				 if (form.PhuongThucNgay.options[0].selected==true) form.NgayLapPhieu.value=HienNgay.ngay.value;
				 if (form.PhuongThucNgay.options[1].selected==true) form.NgayLapPhieu.value="dd/mm/yyyy";
				 if (form.PhuongThucNgay.options[2].selected==true) form.NgayLapPhieu.value="dd/mm/yyyy";
				 } 
function chon(form)
     { window.location.assign("message_send.asp?"+ form.nhomnhan.value);
     }
function kiemtra(form)
	 {  if (form.manguoinhan.value=="") 
	     { alert("B?n ph?i ch?n ngu?i nh?n");}
		else if (form.manguoigui.value==form.manguoinhan.value)
			 {alert ("B?n không th? t? g?i tin cho mình du?c"); form.manguoinhan.value="" ;
		      }
		 } 
function kiemtratraloi(form)
	{ if (form.chude.value=="") alert("B?n ph?i nh?p vào ch? d?") 
			  else if (form.noidung.value=="") alert("B?n ph?i nh?p vào n?i dung") 
	}
</script>