$(document).ready(function(){

    //SITE MENU 시작
                        zIdx=999;
                        $('input[id="chk"]').on('click',function(){
                           if( $(this).is(":checked") )  //체크된상태
                           {                  
                                SiteOn();     
                           }
                           else //체크해제된 상태
                           {
                                SiteOff();
                           }      
                        })
                        // SiteMap 표시하기
                       
                        function SiteOn(){
                            //BG
                            $('#bg').addClass('bgon')
                            .css('z-index',zIdx)
                            .css('display','block')
                            //Modal  
                            $('#modal')
                            .css('display','block')
                            .css('z-index',zIdx+1);
                            $('#sitemenu').css('z-index',zIdx+2);
                        }
                        // SiteMap 해제하기
                        function SiteOff(){
                            $('#bg').removeClass('bgon');
                            $('#bg').css('z-index','0');
                            $('#modal').css('display','none');
                            $('#sitemenu').css('z-index','1');
                        }

                    //SITE MENU 끝

                    //로그인아이콘 클릭시 처리
                    $('#loginicon').on('click',function(){
                        $('#bg')
                        .addClass('bgon')
                        .css('z-index',zIdx)
                        .css('display','block');

                        $('#loginwin').removeClass('loginoff');

                        $('#loginwin')
                        .addClass('loginon')
                        .css('z-index',zIdx+1)
                        .css('display','block'); 
                    })

                    //백그라운드 클릭시 처리
                    $('#bg').on('click',function(){
                        $('#loginwin').removeClass('loginon');
                        $('#loginwin').addClass('loginoff');
                        
                        //bg제거, modal제거
                        SiteOff();
                        //햄버거 체크해제
                        $('input[id="chk"]').prop("checked",false);
                        
                    }) 

})