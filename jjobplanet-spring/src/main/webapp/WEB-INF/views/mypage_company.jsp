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
                        <div style="display: flex;" >
                            <div style="width: 243px; height: 326px; text-align: center;">
                                <a href="./mypage_company" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange_company">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./jobpostinglist">채용공고 작성내역</a></div>
                                <div style="margin-top: 20px;"><a href="./recruitment">채용공고 작성</a></div>
                            </div>
                                <!-- 내용 -->
                                <div>
                                    <h2>기업 정보</h2>
                                    <div style="width: 796px; margin-top: 40px;">
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">산업</dt>
                                            <dd>포털,컨텐츠,커뮤니티 </dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">사원수</dt>	
                                            <dd>80명</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">기업 구분</dt>	
                                            <dd>중소기업</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">설립일</dt>	
                                            <dd>2022-02-10</dd>	
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">대표자</dt>
                                            <dd>아무개</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">주요 산업</dt>	
                                            <dd>...</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">4대보험</dt>
                                            <dd>국민연금 , 건강보험, 고용보험, 산재보험</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head">홈페이지</dt>	
                                            <dd>http://www.naver.com</dd>
                                        </dl>
                                        <dl style="display: flex; margin-bottom: 16px;">
                                            <dt class="company-info-head" >주소</dt>
                                            <dd>서울 강남구 삼성로 86길 35-6(대치동) 목천빌딩</dd>	
                                        </dl>
                                        <button onClick="window.location.reload()">회원 탈퇴</button>
                                    </div>
                                </div><!-- 내용 -->	
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