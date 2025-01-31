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
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;700&display=swap" rel="stylesheet">
        
        <!-- SCRIPT-->
        <script src="./app.js"></script>        
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
	                    <div style="margin-top: 30px;">
                            <h3>별점이 높은 기업</h3>
                            <div style="display: grid; margin-top: 16px; grid-template-columns: 1fr 1fr 1fr 1fr; gap: 12px;">
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item " style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                            </div>
                        </div>

                        <div style="margin-top: 30px;">
                            <h3>채용 추천 기업</h3>
                            <div style="display: grid; margin-top: 16px; grid-template-columns: 1fr 1fr 1fr 1fr; gap: 12px;">
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
                                <div class="item" style="width: 291px; height: 128px; background-color: #F5F5F5;"></div>
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