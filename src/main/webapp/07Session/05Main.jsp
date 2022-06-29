<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- BS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<!-- JQ -->
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<h1>MAIN</h1>
세션ID : <%=session.getId() %><br>
계정ID : <%=session.getAttribute("ID") %><br>
세션 유지시간  : <%=session.getMaxInactiveInterval() %> 초<br>
<p id=timer></p>
<script>	 
	max=<%=session.getMaxInactiveInterval() %>;
	function timer(){
		max = max-1;
		if(max<0)
		{
			clearInterval(tmp);
			alert("세션종료");
			location.href="05LoginForm.jsp";
		}
		document.getElementById("timer").innerHTML=max;
	}
	tmp = setInterval(timer,1000);
</script>
<a href="05ShowCartList.jsp">장바구니로 이동</a>
<a href="05Logout.jsp">로그아웃</a>
 
	<style>
	 #maincontents{
	 	display:flex;
	 	justify-content: space-around;
	 }
	 #maincontents img
	 {
	 	width:100%;
	 	 
	 }
	 
	</style>
	<div id=wrapper>
		
		<div id=maincontents class="container-md">
			<!-- ITEM1 -->
 			<div class="card" style="width: 18rem;">
 					<form>
 						<input type=hidden name="prodname" value="asus">
 						<input type=hidden name="cat" value="notebook" >
 						<input type=hidden name="price" value="1500000">
 						
						<img src="https://dlcdnwebimgs.asus.com/gain/5183d61e-e9fe-4734-8270-d937a0cafc8d/w800" class="card-img-top" alt="...">
						<div class="card-body">
					    <h5 class="card-title mb-2">ASUS</h5>	  
					    <input type=submit  class="btn btn-primary w-100" value="상세정보">
					    <button onclick="addtoCart(0)" class="btn btn-primary w-100 mt-3">CART</button>
				  		</div>
			  		</form>
			</div>
			<!-- ITEM2 -->
			<div class="card" style="width: 18rem;">
				<form>
				 		<input type=hidden name="prodname" value="LGGram17">
 						<input type=hidden name="cat" value="notebook" >
 						<input type=hidden name="price" value="2000000">
						<img src="https://search.pstatic.net/sunny/?src=http%3A%2F%2Fimage3.compuzone.co.kr%2Fimg%2Fproduct_img%2F2021%2F0112%2F750848%2F750848_600.jpg&type=sc960_832" class="card-img-top" alt="...">
						<div class="card-body">
					    <h5 class="card-title mb-2">LGGRAM 17</h5>	  
						<input type=submit  class="btn btn-primary w-100" value="상세정보">
					    <button  onclick="addtoCart(1)" class="btn btn-primary w-100 mt-3">CART</button>
				  		</div>
				  </form>
			</div>
			<!-- ITEM3 -->
			 <div class="card" style="width: 18rem;">
			 	<form>
			 	 		<input type=hidden name="prodname" value="LGGram13">
 						<input type=hidden name="cat" value="notebook" >
 						<input type=hidden name="price" value="1300000">
 						
						<img src="https://search.pstatic.net/sunny/?src=http%3A%2F%2Fimage3.compuzone.co.kr%2Fimg%2Fproduct_img%2F2021%2F0112%2F750848%2F750848_600.jpg&type=sc960_832" class="card-img-top" alt="...">
						<div class="card-body">
					   	<h5 class="card-title mb-2">LGGRAM 15</h5>	  
					    <input type=submit  class="btn btn-primary w-100" value="상세정보">
					    <button  onclick="addtoCart(2)" class="btn btn-primary w-100 mt-3">CART</button>
				  		</div>
			  	</form>
			</div>
		</div>
	</div>
	
	<script>
		function addtoCart(num)
		{
			form = document.forms[num]; //num번째 form태그
			prodname = form[0].value;	//num번째 form태그의 첫번째 input안의 값
			cat = form[1].value;		//num번째 form태그의 두번째 input안의 값
			price = form[2].value;		//num번째 form태그의 세번째 input안의 값 
			isok=confirm("상품명 : " + prodname+"\n카테고리 : " + cat +"\n가격 : "+price);
			if(isok)
			{
				form.action="05AddCart.jsp"
				form.submit();
			}
	
		}
		
	
	</script>


</body>
</html>








