<script language="javascript" >
function currentdate()
{ homnay= new Date();
  ngay=homnay.getDate();
  if (ngay <10) ngay="0"+ngay;
	thang=homnay.getMonth()+1;
	if (thang <10) thang="0"+thang;
	  nam=homnay.getYear();
  hienngay.ngay.value=ngay+"/"+thang+"/"+nam;
}
 function chonngay(form)
				 { 
				 if (form.phuongthucngay.options[0].selected==true) form.ngaylapphieu.value=hienngay.ngay.value;
				 if (form.phuongthucngay.options[1].selected==true) form.ngaylapphieu.value="dd/mm/yyyy";
				 if (form.phuongthucngay.options[2].selected==true) form.ngaylapphieu.value="dd/mm/yyyy";
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
	
function chuyenthamso(form)
{   loaithietbi=form.loaithietbithay.value;
      mathietbi=form.thietbithay.value
   if (parseInt(loaithietbi)==0) mathietbi="00";
	if (parseInt(loaithietbi)<10) loaithietbi="0"+loaithietbi;
	
	window.location.assign("item_info.asp?"+loaithietbi+mathietbi);
}
   function 
   kiemtrasoluongtb()
   { if (this.value=='') this.value='0'; else if (this.value >nhatky.soluonggui.value) {alert('B?n không th? nh?p quá s? lu?ng khách g?i');this.value=0;
	 }
   }
   
   function TongThanhTien()
   {   var i=1;
   		var Tong=0;
   		while (i<= document.nhatky.tongsodv.value) 
		{ Tong=parseInt(Tong) + parseInt(document.getElementById(i).value)
				 i++;
				 }
         nhatky.tongcong.value=Tong+parseInt(nhatky.phiphatsinh.value);
    }
   
   function demsoluongnhap()
   { var j=1;
     var sl=0;
	while (j<=parseInt(document.nhatky.tongsodv.value)+2) 
		{ sl=parseInt(sl) + parseInt(document.getElementById("sll"+j).value);
		 if (sl>(parseInt(nhatky.soluonggui.value)-parseInt(nhatky.soluongdalam.value))) {alert("B?n không th? nh?p quá s? lu?ng khách g?i!");
		 document.getElementById("sll"+j).value=0;
		  return false;
		 }
		  j++;
		}
		
    }
	function tongsoluonglam()
	{
	 var t=2;
     var sll=0;
	while (t<=parseInt(document.nhatky.tongsodv.value)) 
	   {
		 sll=parseInt(sll) + parseInt(document.getElementById("sll"+t).value);
		  t++;
		}
      nhatky.tongsotblam.value=sll;
	}
	
</script>