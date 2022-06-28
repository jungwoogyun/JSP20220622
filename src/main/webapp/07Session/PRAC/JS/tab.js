$(document).ready(function(){
    $("#tabUI>ul li").on('click',function(){
        // alert($(this).html()+"!");
        //alert($(this).index());
        idx = $(this).index();

        $('#tabUI>ul li').removeClass("on");
        $('#tabUI>ul li').eq(idx).addClass("on");     
        $('#tabContents>div').removeClass("on");
        $('#tabContents>div').eq(idx).addClass("on");

    })

    $('#prev').on("click",function(){
        // alert("클릭함");
        idx=$(".on").index();
        // alert(idx);
        if(idx-1>=0)
        {
            $('#tabUI>ul li').removeClass("on");
            $('#tabUI>ul li').eq(idx-1).addClass("on");     
            $('#tabContents>div').removeClass("on");
            $('#tabContents>div').eq(idx-1).addClass("on");
        }
    })

    $('#next').on("click",function(){    
        idx=$(".on").index();  
        end=$("#tabUI>ul li").length-1;  
       
        if(idx+1<=end)
        {
            $('#tabUI>ul li').removeClass("on");
            $('#tabUI>ul li').eq(idx+1).addClass("on");     
            $('#tabContents>div').removeClass("on");
            $('#tabContents>div').eq(idx+1).addClass("on");
        }

    })

});