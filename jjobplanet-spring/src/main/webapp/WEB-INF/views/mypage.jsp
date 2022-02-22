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
    <body link="black" vlink="black" alink="black">
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
                            <a href="./mypage" style="margin-top: 20px;"><span class="material-icons-outlined" style="font-size: 90px">face</span></a>
                            <div style="margin-top: 20px;"><a href="./passwordchange">비밀번호 변경</a></div>
                            <div style="margin-top: 20px;"><a href="./interestedcompany">관심 기업</a></div>
                            <div style="margin-top: 20px;"><a href="./reviewhistory">리뷰 작성 내역</a></div>
                            <div style="margin-top: 20px;"><a href="./writereview">리뷰 작성</a></div>
                        </div>
                        <!-- 내용 -->
                        <div>
                            <h2>기본정보</h2>
                            <div>
                                <div style="margin-top: 40px;">
                                    <div style="margin-right: 30px; display: flex; margin-bottom: 30px;">
                                        <div style="width: 387px;">
                                            <div>성별</div>
                                            <div style="margin-top: 16px;">
                                                <input type="radio" id="contactChoice1" name="contact" value="man" style="font-size:20pt ; width:15px; height:15px"> <label for="contactChoice1">남자</label>
                                                <input type="radio" id="contactChoice2" name="contact" value="woman"style="font-size:20pt ; width:15px;height:15px "> <label for="contactChoice2">여자</label>
                                            </div>
                                        </div>
                                            
                                        <div>
                                            <div>출생년도</div>
                                            <select name ="years" style="width: 287px; height: 40px; margin-top: 16px;">		 						
                                                <option>년도</option>
                                                <option>1981</option>
                                                <option>1982</option>
                                                <option>1983</option>
                                                <option>1984</option>
                                                <option>1985</option>
                                                <option>1986</option>
                                                <option>1987</option>
                                                <option>1988</option>
                                                <option>1989</option>
                                                <option>1990</option>
                                                <option>1991</option>
                                                <option>1992</option>
                                                <option>1993</option>
                                                <option>1994</option>
                                                <option>1995</option>
                                                <option>1996</option>
                                                <option>1997</option>
                                                <option>1998</option>
                                                <option>1999</option>
                                                <option>2000</option>
                                                <option>2001</option>
                                                <option>2002</option>
                                                <option>2003</option>
                                                <option>2004</option>
                                            </select>
                                        </div>
                                            
                                    </div>

                                    <div style="display: flex; ">
                                        <div style="width: 387px;">
                                            <div>현재(관심)직종</div>
                                            <input type ="text" style="margin-top: 16px;">
                                        </div>	
                                      
                                        <div>
                                            <div>총 경력</div>
                                            <select name ="career" style="width: 287px; height: 40px; margin-top: 16px;">
                                                <option>0년</option>
                                                <option>1년~5년</option>
                                                <option>5년~10년</option>
                                                <option>10~15년</option>
                                                <option>15년~</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>  
                    
                               
                                <div style="display: flex; margin-top: 40px;">
                                    <button onClick="window.location.reload()">정보 변경</button>
                                    <button onClick="window.location.reload()">회원 탈퇴</button>
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