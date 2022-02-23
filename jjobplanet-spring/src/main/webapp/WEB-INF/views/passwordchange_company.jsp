<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- INFORMATION -->
        <title>NO.1 기업 정보 플랫폼 | 잡플래닛</title>

        <!-- METAS-->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- STYLE-->
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>       
        <script src="./jquery-3.6.0.min.js"></script>
    </head>
    <body>
		<div id="container">
            <div id="wrap">
                <!-- HEADER -->
                <header>
					<jsp:include page="./header.jsp"/>
                </header>
                
                <!--  MAIN -->
               	<main>
               		 <div id="warp-main">
	                    <!-- 내용 -->
                        <div style="display: flex;">
                            <div style="width: 243px; height: 326px; text-align: center;">
                                <a href="./mypage_company" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange_company">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./jobpostinglist">채용공고 작성내역</a></div>
                                <div style="margin-top: 20px;"><a href="./recruitment">채용공고 작성</a></div>
                            </div>
                            <!-- 내용 -->
                            <div>
                                <h2>비밀번호 변경</h2>
                                <div style="margin-top: 30px;">
                                    <div>현재 비밀번호</div>
                                    <input type="text" style="margin-top: 16px">
                                </div>
                                <div style="display: flex; margin-top: 16px;">
                                    <div style="margin-right: 16px;">
                                        <div>새 비밀번호</div>
                                        <input type="password" id ="password2" style="margin-top: 16px">
                                    </div>
                                    <div>
                                        <div>새 비밀번호 확인</div>
                                        <input type="password" id ="password3" style="margin-top: 16px">
                                    </div>
                                </div>
                                <button onClick="passwordmatch()" style="margin-top: 16px;">정보변경</button>                            
                            </div>
                        </div>          
	                </div>
               	</main>

                <!-- FOOTER -->
                <footer>	 
					<jsp:include page="./footer.jsp"/>
                </footer>
            </div>
        </div>
    </body>
</html>