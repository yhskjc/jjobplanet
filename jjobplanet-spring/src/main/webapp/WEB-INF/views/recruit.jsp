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
	                    <div style="font-size: 30px; margin-bottom: 30px; font-weight: bold;">Java Spring Engineer</div>
				            <dl>
				                <dt class="recruit-info-head">기업명</dt>
				                <dd>카카오</dd>
				            </dl>
				            <dl>
				                <dt class="recruit-info-head">담당업무</dt>
				                <dd class="recruit-info-content">개발</dd>
				            </dl>
				            <dl>
				                <dt class="recruit-info-head">경력</dt>
				                <dd class="recruit-info-content">신입 / 1년이하</dd>
				            </dl>
				            <dl>
				                <dt class="recruit-info-head">근무지</dt>
				                <dd class="recruit-info-content">경기도 성남 판교</dd>
				            </dl>           
				            <div style="width: 1200px; ">
				                <div class="recruit-info-head">상세정보</div>
				                <textarea style="width:100%; height: 400px; padding: 4px 0; resize: none; border: solid #707070 1px;" readonly></textarea>
				
				                <div style="display: flex; justify-content: end; margin-top: 12px">
				                    <button style="margin-right: 12px">지원하기</button>
				                    <button>관심기업 등록</button>
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