<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

            <!-- header -->
            <header>
      
                <!-- quick -->
                <ul id="quick">
                    <li>
                        <!-- Sitemap -->
                        <input type="checkbox" id="chk">
                        <label  for="chk" id="sitemenu">
                            <span id="top"></span>
                            <span id="middle"></span>
                            <span id="bottom"></span>
                        </label>
                            <!-- BG -->
                            <div id="bg"></div>
                            <!-- 모달창 -->
                            <div id="modal"></div>
                    </li>




                    <!-- Login  -->
                    <li  id="loginicon">
                        <i class="bi bi-person" style="font-size:2.5rem;"></i>
                    </li>

                    <!--
                    <li><a href="#">Menu3</a></li>
                    <li><a href="#">Menu4</a></li>
                    -->
                </ul>
 
                <!-- login -->
                <div id="loginwin" class="p-3">
                    <div style="text-align:center;"><i class="bi bi-person" style="font-size:5rem;"></i></div>
                    <form action="01LoginProc.jsp" method="post">
                    	<input placeholder="Insert ID" class="form-control mb-3" name=userid>
                    	<input placeholder="Insert PW" class="form-control mb-3" name=pwd>
                    	<input type="submit" value="Login" class="btn btn-primary w-100">
                    </form>
                    
                </div>
  
            </header>
            