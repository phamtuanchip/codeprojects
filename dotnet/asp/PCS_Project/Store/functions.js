			  		function Validate(form1) {
					
						//var regex=/^[a-zA-Z]+$/; 
					
						if(form1.TenThietBi.value == "" || form1.TenThietBi.value == null) {
							alert ("Ph?i nh?p Tên nhân viên ");
							form1.TenThietBi.focus();
							return false;
						}
						//Match for upper- or lowercase letters					 

						if(form1.tennv.value == "" || form1.tennv.value == null) {
							alert ("Ph?i nh?p tên nhân viên");
							return false;
						}
						/*
						if ( regex.test(form1.tennv.value) == false) {
          				 alert("Tên nhân viên ph?i là ky t?");
         				 form1.tennv.focus();
						 return false;
       					}*/
						
						if(form1.username.value == "" || form1.username.value == null) {
							alert("Ph?i nh?p tên dang nh?p");
							form1.username.focus();
							return false;
						}
						
						if(form1.password.value == "" || form1.password.value == null) {
							alert("Ph?i nh?p m?t kh?u");
							form1.password.focus();
							return false;
						}
						
						if(form1.password.value.length < 4) {
							alert("M?t kh?u ph?i nhi?u hon 4 ký t?");
							return false;
						}
						if(isNaN(form1.dienthoai.value)) 
						{
							alert("Ði?n tho?i ph?i nh?p s?")
							form1.dienthoai.focus();
							return false;
						}
						else {
							return true;
						}
					}
			  
