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
        <script>
			window.onload = () => { $(".faq_answer_row").hide(); }
		</script>
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
               		 <div>
	                    <!-- 내용 -->
                        <div class="policy_upper_wrap" style="display: flex; justify-content: space-between;">
                            <span onclick="location.href='./policy'">이용약관</span>
                            <span onclick="location.href='./privacy'">개인정보처리방침</span>
                            <span onclick="location.href='./recruitService'">채용서비스 약관</span>
                            <span onclick="location.href='./notice'">공지사항</span>
                            <span onclick="location.href='./faq'">FAQ</span>
                        </div>
                        <div class="policy_body_wrap">
                            <div>
                                <h1>FAQ</h1>
                                <div style="margin-top: 40px;">
                                    <div onclick="openAnswer(1);" style="font-weight: bold; font-size: 20px;">잡플래닛은 어떻게 사용자를 보호하나요? </div>
                                    <p class="faq_answer_row"  id="faq_answer1" style="margin-top: 16px;">
                                        잡플래닛은 사용자 정보를 최소한으로 수집합니다. 정보를 수집하지 않기 때문에 유출될 정보도 없습니다.
                                        잡플래닛은 사용자를 보호하기 위해 다양한 장치를 갖췄습니다. 사용자가 리뷰 작성 중 실수로 자신의 신분을 드러내는 경우, 해당 리뷰는 등록되지 않습니다. 잡플래닛의 필터링 시스템과 전문 관리 인력에 의해 사용자가 다시 한 번 검토하도록 되돌려 보내지기 때문입니다.
                                    </p>
                                </div>
                                <div style="border: solid #dddddd 1px; margin: 20px 0"> </div>
                                <div>
                                    <div onclick="openAnswer(2);" style="font-weight: bold; font-size: 20px;">잡플래닛의 정보는 어떻게 이용할 수 있나요?</div>
                                    <p class="faq_answer_row" id="faq_answer2" style="margin-top: 16px;">
                                        잡플래닛에서는 누구나 전·현직 직원이 남긴 평점과 기업리뷰, 연봉정보, 면접후기 등을 찾아볼 수 있습니다.
                                        회원님의 경험을 바탕으로 리뷰, 연봉, 면접에 관한 정보를 작성해 주시면, 같은 카테고리의 게시글들을 승인된 날로부터 1년동안 무료로 열람할 수 있습니다.
                                        게시글 작성이 어려운 경우에는 열람권을 구입하시면 한달 간 모든 게시글을 열람할 수 있습니다. 잡플래닛 제휴대학교 학생 회원은 제한 없이 콘텐츠를 열람할 수 있습니다.
                                    </p>
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