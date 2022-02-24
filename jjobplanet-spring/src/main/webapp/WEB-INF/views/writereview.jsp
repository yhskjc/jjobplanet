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
                        <div style="display: flex;">
                            <div style="width: 243px; height: 326px; text-align: center;">
                                <a href="./mypage" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./interestedcompany">관심 기업</a></div>
                                <div style="margin-top: 20px;"><a href="./reviewhistory">리뷰 작성 내역</a></div>
                                <div style="margin-top: 20px;"><a href="./writereview">리뷰 작성</a></div>
                            </div>
                            <!-- 내용 -->
                            <div>
                                <h2>리뷰 작성</h2>
                                <div>모든 정보는 익명으로 처리되니 걱정마세요.</div>
                                <div id = "write_contents_notice" style="margin-top: 30px;">
                                    <div style="display: flex; margin-bottom: 16px;">
                                        <div style="width: 100px;">기업명</div>
                                        <input type="text" >
                                    </div>

                                    <div style=" display: flex; margin-bottom: 16px;">
                                        <div style="display: flex; align-items: center; width: 100px;">현(전)직장</div>	
                                        <input type="text">
                                    </div>
                                    <div style=" display: flex; margin-bottom: 16px;">
                                        <div style="display: flex; align-items: center; width: 100px;">직종</div>	
                                        <input type="text" >
                                    </div>
                                    <div style=" display: flex; margin-bottom: 16px;">
                                        <div style="display: flex; align-items: center; width: 100px;">고용형태</div>	
                                        <input type="text" >
                                    </div>
                                    <div style=" display: flex; margin-bottom: 16px;">
                                        <div style="display: flex; align-items: center; width: 100px;">근무지역</div>	
                                        <input type="text" >
                                    </div>
                                    <div style=" display: flex; margin-bottom: 16px;">
                                        <div style="display: flex; align-items: center; width: 100px;" >평점</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    
                                    
                                    <div style="margin-bottom: 16px;">
                                        <div style="margin-bottom: 16px;">기업의 장점</div>	
                                        <textarea style="width : 800px; height : 150px"></textarea>
                                    </div>
                                    
                                    <div style="margin-bottom: 16px;">
                                        <div style="margin-bottom: 16px;">기업의 단점</div>
                                        <textarea style="width : 800px; height : 150px"></textarea>
                                    </div>
                                    
                                    <div style="margin-bottom: 16px;">
                                        <div style="margin-bottom: 16px;">기업의 한줄평</div>	
                                        <textarea style="width : 800px; height : 30px"></textarea>
                                    </div>

                                    <div style="display: flex; margin-bottom: 16px;">
                                        <div style="width: 186px;" >승진기회 및 가능성</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    <div style="display: flex; margin-bottom: 16px;">
                                        <div style="width: 186px;" >복지 및 급여</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    <div style="display: flex; margin-bottom: 16px;">
                                        <div  style="width: 186px;">업무의 삶의 균형</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    <div style="display: flex; margin-bottom: 16px;">
                                        <div  style="width: 186px;">사내 문화</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    <div style="display: flex;margin-bottom: 16px;">
                                        <div  style="width: 186px;">경영진</div>	
                                        <div style="display: flex;">
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                            <span class="material-icons">star</span>
                                        </div>
                                    </div>
                                    <button>저장 하기</button>
                                </div>
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