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
        
        
        
    </head>
    <body>
        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <form name="individualJoin" id="individualJoin" method="post" action="joinOk.do">
                <div>
                    <img style="width: 500px; height: auto;object-fit: cover;" src="./img/recruit.png";>
                    <div>
                        <h1>회원가입(개인)</h1>     
                        <div style="margin-top: 40px; display: block;">
                            <input type="email" name="umail" placeholder="이메일">
                            <button onclick="">중복확인</button>
                        </div>
                        <div style="margin-top: 16px;">
                            <input type="password" size="20" name="upw" placeholder="비밀번호">
                            <input type="password" size="20" name="upwcheck" placeholder="비밀번호 확인">
                        </div>

                        <div  style="margin-top: 16px;">
                            <textarea style="width: 500px; height: 200px;" readonly></textarea>
                        </div>
                        
                        <div style="margin-top: 16px;">    
                            <input type="checkbox" style="margin-right: 8px;" name="isAgree">약관에 동의합니다.
                        </div>

                        <div style="margin-top: 16px;">    
                            <input type="submit"  value="가입완료">
                        </div>
                        
                    </div>
                </div>                                            
            </form>
        </div> 
    </body>
</html>