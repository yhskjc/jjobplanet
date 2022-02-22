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
		<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
            <div>
                <img style="width: 500px; height: auto;object-fit: cover;" src="./img/hire.png";>
                <div style="text-align: center;">                                                            
                    <h1>회원가입</h1>       
                    <div style="margin-top: 40px;">
                        <button onclick="location.href='./individualJoin'">개인</button>
                        <button onclick="location.href='./companyJoin'">기업</button>
                    </div>
                    <div style="margin: 16px;">
                        <button onclick="location.href='/'" >취소</button>
                    </div>
                </div>          
            </div>        
        </div>
    </body>
</html>