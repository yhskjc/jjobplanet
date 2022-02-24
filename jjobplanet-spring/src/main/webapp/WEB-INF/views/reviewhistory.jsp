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
                                <a href="./mypage" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px;">face</span></a>
                                <div style="margin-top: 20px;"><a href="./passwordchange">비밀번호 변경</a></div>
                                <div style="margin-top: 20px;"><a href="./interestedcompany">관심 기업</a></div>
                                <div style="margin-top: 20px;"><a href="./reviewhistory">리뷰 작성 내역</a></div>
                                <div style="margin-top: 20px;"><a href="./writereview">리뷰 작성</a></div>
                            </div>
                            <div>
                                <h2>리뷰 작성 내역</h2>
                                <div>총 2개의 리뷰 작성 내역이 있습니다.</div>
                                <table style="border-collapse: collapse; margin-top: 30px;">
                                    <thead style="height: 60px;">
                                        <th style="border-bottom: solid black 1px; width: 89px; text-align: start;">#</th>
                                        <th style="border-bottom: solid black 1px; width: 416px; text-align: start;">기업명</th>
                                        <th style="border-bottom: solid black 1px; width: 214px; text-align: center;">고용 상태</th>
                                        <th style="border-bottom: solid black 1px; width: 89px; text-align: center;">작성일</th>
                                        <th style="border-bottom: solid black 1px; width: 89px; text-align: center;">　</th>
                                    </thead>
                                    <tbody>
                                        <tr style="height: 60px;">
                                            <td style="border-bottom: solid black 1px;">1</td>
                                            <td style="border-bottom: solid black 1px;">오피지지</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">채용중</td>
                                            <td style="border-bottom: solid black 1px;">2022-01-28</td>
                                            <td style="align-items: center; border-bottom: solid black 1px; text-align: center;">
                                                <div>수정</div>
                                                <div>삭제</div>
                                               
                                            </td>
                                        </tr>
                                        <tr style="height: 60px;">
                                            <td style="border-bottom: solid black 1px;">2</td>
                                            <td style="border-bottom: solid black 1px;">(주)구글 코리아</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">채용중</td>
                                            <td style="border-bottom: solid black 1px;">2022-01-28</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">
                                                <div>수정</div>
                                                <div>삭제</div>
                                            </td>
                                        </tr>
                                        <tr style="height: 60px;">
                                            <td style="border-bottom: solid black 1px;">3</td>
                                            <td style="border-bottom: solid black 1px;">삼성 전자</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">채용대기</td>
                                            <td style="border-bottom: solid black 1px;">2022-01-28</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">
                                                <div>수정</div>
                                                <div>삭제</div>
                                            </td>
                                        </tr>
                                        <tr style="height: 60px;">
                                            <td style="border-bottom: solid black 1px;">4</td>
                                            <td style="border-bottom: solid black 1px;">(주)넥슨 지티</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">채용마감</td>
                                            <td style="border-bottom: solid black 1px;">2022-01-28</td>
                                            <td style="border-bottom: solid black 1px; text-align: center;">
                                                <div>수정</div>
                                                <div>삭제</div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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