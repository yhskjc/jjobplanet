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
        
    </head>
    <body>
		<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <div>    
                <img style="width: 500px; height: auto;object-fit: cover;" src="./img/recruit.png";>
                <h1 style="text-align: center;">로그인</h1>        
                <div class="join_div" style="text-align: center;">                                   
                    <div style="margin-top: 16px;">
                        <input type="radio" value="개인" name="kind" name="category" style="margin-right: 4px">개인
                        <input type="radio" value="기업" name="kind" name="category" style="margin-right: 4px; margin-left: 8px;">기업
                    </div>

                    <div style="margin-top: 16px;"><input type="text" size="20" name="" placeholder="이메일"></div>
                    <div style="margin-top: 16px"> <input type="text" size="20" name="" placeholder="비밀번호">
                    </div>
                    <div class="login_input" style="margin-top: 16px;">
                        <button onclick="location.href='./login.do'" id="join_button">로그인</button>
                        <button onclick="location.href='./join'" id="join_button">회원가입</button>
                        <button onclick="location.href='./findPassword'" id="join_button">비밀번호 찾기</button>
                    </div>      
                </div>
            </div>                      
        </div>      
    </body>
</html>