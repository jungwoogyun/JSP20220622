<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<%@page import="java.io.*" %>
	<%
		Reader rin = new FileReader("c:\\banner\\bname.txt");
		String bname="";
		while(true)
		{
			int data = rin.read();
			if(data==-1)
				break;
			bname+=(char)data+"";
		}
		
		String arr[] = bname.split(" ");
		System.out.println("arr[0] : " + arr[0]);
		System.out.println("arr[1] : " + arr[1]);
		System.out.println("arr[2] : " + arr[2]);
		System.out.println("arr[3] : " + arr[3]);
		rin.close();
	%>

           <div id="banner-slider"  class="swiper">
                <ul  class="swiper-wrapper">
                    <li class="swiper-slide"><a href=#> <img src="../IMG/<%=arr[0]%>"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/<%=arr[1]%>"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/<%=arr[2]%>"> </a></li>
                    <li class="swiper-slide"><a href=#> <img src="../IMG/<%=arr[3]%>"> </a></li>
                   
                </ul>
                    <!-- If we need pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- If we need navigation buttons -->
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                    <!-- scrollbar -->
                    <div class="swiper-scrollbar"></div>
            </div>