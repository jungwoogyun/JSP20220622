$(document).ready(function(){
    const swiper = new Swiper('.swiper', {
        // Optional parameters
        direction: 'horizontal', //vertical,horizontal
        loop: true,
        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable : 'true',
        },
        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
        // And if we need scrollbar
        scrollbar: {
            el: '.swiper-scrollbar',
            draggable: true,
        },
        //마우스 휠 사용
        // mousewheel:true,
        //페이지 전환효과
        effect : 'fade',
        speed : 1000,
        //자동스크롤링
        autoplay:{
            delay:1000,
            disableOnInteraction:false,
        }

    }); //Swiper 끝

}) //ready 끝