<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 
<script>
	max = <%=session.getMaxInactiveInterval()%>
	function timer()
	{
		max--;
		if(max<0)
		{
			clearInterval(test);
			alert("자동로그아웃처리됨!");
			location.href="01Index.jsp";
		}
	}
	test = setInterval(timer,1000);
	
</script>

<!-- link.jsp -->
<%@include file="../INCLUDES/link.jsp" %>

</head>
<body>

	<div id=wrapper>
		<div id=topmenu>
			<!-- header.jsp -->
			<%@include file="../INCLUDES/header.jsp" %>
		
			<!-- nav.jsp -->
			<%@include file="../INCLUDES/nav.jsp" %>
		</div>
		
		        <!-- contents.. -->

        <div id="main-container">
            <!-- banner slider -->
            <div id="banner-slider"  class="swiper">
                <ul  class="swiper-wrapper">
                    <li class="swiper-slide"><a href=#> <img src="../IMG/banner1.jpg"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/banner2.jpg"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/banner3.jpg"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/banner4.jpg"> </a></li>
                   
                </ul>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                    <!-- scrollbar -->
                    <div class="swiper-scrollbar"></div>
            </div>
  
            
            
            
            <!-- tab -->
 
            <div id="tab">
                <!-- tab 구현 -->
                <div id="tabcontainer">
                    <div id="prev">&lt;</div>
                    <div id="next">&gt;</div>
                    <div id="tabUI">
                        <ul> 
                            <li class="on">Tab1</li>
                            <li>Tab2</li>
                            <li>Tab3</li>
                            <li>Tab4</li>
                            <li>Tab5</li>
                        </ul>
                    </div>
                    
                    <div id="tabContents">
                        <div class="on">Tab1 Content</div>
                        <div>Tab2 Content</div>
                        <div>Tab3 Content</div>
                        <div>Tab4 Content</div>   
                        <div>Tab5 Content</div>  
                    </div>
                </div> <!-- 컨테이너 끝 -->


            </div>

          
            <!-- card -->
 
            <div id="cards">
                <div class="card">
                    <img src="../IMG/card1.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card2.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card3.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card4.jpg">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
                <div class="card">
                    <img src="../IMG/card5.webp">
                    <div class="iteminfo">
                        <span>Category</span>
                        <h3>상품설명</h3>
                        <p>이상품에 대한 설명이 들어갑니다</p>
                        <a href="#">자세히보기</a>
                    </div>
                </div>
            </div>
           
          

            <!--item slider Slick-->
            <div id="item-slider">


                <style>
                   
                    .slick-center{ 
                        transform:scale(1.2,1.2);
                        transition:0.5s;
                    }
                    .tmp{
                        width:100%;  
                        
                    }
                    .slick ul{list-style:none;padding:0px;}
                    .slick img {width:300px; height:300px;margin:0px;}
                    .slick li{padding:10px; margin:0px 5px;}
                    .slick-arrow{
                        width:50px;height:50px;line-height:50px;
                        background-color:white;
                        border : 0px;
                        border-radius: 50%;
                        font-size:1.5rem;
                        color:gray;
                        box-shadow: 4px 4px 1px lightgray;
                    }
                    .slick{
                        position:relative;
                    }
                    .slick #prev,.slick  #next{
                        position:absolute;
                        left:0px;
                        top:0px;
                    }
                    .slick #prev{
                        top:135px;
                        left:-25px;
                        z-index:500;
                    }
                    .slick #next{
                        top:135px;
                        left:100%;
                    }
                    .bn-controller{
                        display:flex;
                        justify-content: center;
                        margin-top:15px;
                    }
                    .bn-controller li{
                        width:35px; height:35px;
                    }
                    .bn-controller button{
                        width:100%; height :100%;
                        border:0px;
                        border-radius: 50%;
                        background-color:gray;
                        color:white;
                    }
                    /* .bn-controller .slide-banner{
                        width:50%; height :50%;
                        border:0px;
                        border-radius: 50%;
                        background-color:gray;
                        color:white;
                    } */
                    </style>
                <div id="container" class="">
                    <div class="tmp" style=>
                        <ul class="slick">
                            <li class=""><img src="../IMG/card1.webp"></li>
                            <li class=""><img src="../IMG/card2.webp"></li>
                            <li class=""><img src="../IMG/card3.webp"></li>
                            <li class=""><img src="../IMG/card4.jpg"></li>
                            <li class=""><img src="../IMG/card1.webp"></li>
                            <li class="""><img src="../IMG/card2.webp"></li>
                            <li class=""><img src="../IMG/card3.webp"></li>
                            <li class=""><img src="../IMG/card4.jpg"></li>
                        </ul>
                    </div>
                </div>
            
                <script>
                     $('.slick').slick({ 
                       arrows : true,   //prev,next버튼 표시여부
                       autoplay: true,  //자동넘김 여부
                       speed : 1000,     //슬라이드 속도 
                       autoplaySpeed : 1000, // 자동넘김 슬라이드 간격
                       pauseOnHover : true, //마우스 hover시 슬라이드 멈춤여부
                       vertical : false,
                       slidesToShow:5,  //표시되는 슬라이드 개수
                       slidesToScroll:1,//넘겨질 슬라이드 수
                       centerMode:true,
                    //    prevArrow:"<button id=prev>&lt;</button>",
                    //    nextArrow:"<button id=next>&gt;</button>",
                       prevArrow:"",
                       nextArrow:"",
                       dots : true, //페이지 네비게이션
                       dotsClass:'bn-controller',   //페이지네비게이션 클래스명지정
                       //페이징 커스텀
                       customPaging:function(slide,i){
                            console.log("페이지번호확인 : " + i);
                            console.log(slide);
                           return '<button></button>'
                       },
                       //반응형 처리
                       responsive:[
                        {
                            breakpoint : 960, //너비
                            settings : {
                                slidesToShow:3
                            }
                        },
                        {
                            breakpoint : 768, //너비 
                            settings : {
                                slidesToShow:1
                            }
                        }
                       ]
            
                     })
                </script>



            </div>

        </div>
        
        <!--footer.jsp -->
        <%@include file="../INCLUDES/footer.jsp" %> 
	
	</div>

</body>
</html>