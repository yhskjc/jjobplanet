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
        <script>
            let option1 = false;
            let option2 = false;
            let option3 = false;
            let option4 = false;
            
            function showOption1()
            {
                if(option1 == false )
                {
                    option1 = true;
                    document.getElementById("search-option-recruitcategory").style.display='block';
                } else {
                    option1 = false;
                    document.getElementById("search-option-recruitcategory").style.display='none';
                }
                
                document.getElementById("search-option-industry").style.display='none';
                document.getElementById("search-option-activecategory").style.display='none';
                document.getElementById("search-option-region").style.display='none';
            }

            function showOption2()
            {
                if(option2 == false )
                {
                    option2 = true;
                    document.getElementById("search-option-industry").style.display='block';
                } else {
                    option2 = false;
                    document.getElementById("search-option-industry").style.display='none';
                }
                document.getElementById("search-option-recruitcategory").style.display='none';
                document.getElementById("search-option-activecategory").style.display='none';
                document.getElementById("search-option-region").style.display='none';
            }

            function showOption3()
            {
                if(option3 == false )
                {
                    option3 = true;
                    document.getElementById("search-option-activecategory").style.display='block';
                } else {
                    option3 = false;
                    document.getElementById("search-option-activecategory").style.display='none';
                }
                document.getElementById("search-option-recruitcategory").style.display='none';
                document.getElementById("search-option-industry").style.display='none';
                document.getElementById("search-option-region").style.display='none';
            }

            function showOption4()
            {
                if(option4 == false )
                {
                    option4 = true;
                    document.getElementById("search-option-region").style.display='block';
                } else {
                    option4 = false;
                    document.getElementById("search-option-region").style.display='none';
                }
                document.getElementById("search-option-recruitcategory").style.display='none';
                document.getElementById("search-option-industry").style.display='none';
                document.getElementById("search-option-activecategory").style.display='none';
              
            }

            
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
               			<div style="display:flex;">
               				<div onclick="showOption1()">
           						<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">채용분야</span>
                                    <span class="material-icons">expand_more</span>
                                </div>   
                                <div id="search-option-recruitcategory" style=" display: none; width: 148px; position: absolute; border: solid black 1px; background-color: white;">
                                    <ul>
                                        <li><input type="radio" name="recruitcategory">a</li>
                                        <li><input type="radio" name="recruitcategory">a</li>
                                        <li><input type="radio" name="recruitcategory">a</li>
                                        <li><input type="radio" name="recruitcategory">a</li>
                                    </ul>
                                </div>
               				</div>
                            
               				<div onclick="showOption2()" >
                              	<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px;" >산업</span>
                                    <span class="material-icons">expand_more</span>
                                    
                                </div>
                                <div id="search-option-industry" style=" display: none; width: 148px; position: absolute; border: solid black 1px; background-color: white;">
                                        <ul>
                                            <li><input type="radio" name="industry">a</li>
                                            <li><input type="radio" name="industry">a</li>
                                            <li><input type="radio" name="industry">a</li>
                                            <li><input type="radio" name="industry">a</li>
                                        </ul>
                                    </div>
                            </div>
                            <div onclick="showOption3()" >
                              	<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">활동분야</span>
                                    <span class="material-icons">expand_more</span>
                                    
                                </div>
                                <div id="search-option-activecategory" style=" display: none; width: 148px; position: absolute; border: solid black 1px; background-color: white;">
                                        <ul>
                                            <li><input type="radio" name="activecategory">a</li>
                                            <li><input type="radio" name="activecategory">a</li>
                                            <li><input type="radio" name="activecategory">a</li>
                                            <li><input type="radio" name="activecategory">a</li>
                                        </ul>
                                    </div>
                            </div>
                            <div onclick="showOption4()" >
                              	<div class="search-filter">
                                    <span style="width: 100%; margin-right: 16px">지역</span>
                                    <span class="material-icons">expand_more</span>
                                    
                                </div>
                                <div id="search-option-region" style=" display: none; width: 148px; position: absolute; border: solid black 1px; background-color: white;">
                                        <ul>
                                            <li><input type="radio" name="region">a</li>
                                            <li><input type="radio" name="region">a</li>
                                            <li><input type="radio" name="region">a</li>
                                            <li><input type="radio" name="region">a</li>
                                        </ul>
                                    </div>
                            </div>
                            <button>재검색</button>
               			</div>

                        <div id="search-result" style="margin-top: 10px;">
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div>iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>

                            <div class="search-result-item" onclick="location.href='./company'" >
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>
                            
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
                                </div>
                            </div>
                            <div class="search-result-item" onclick="location.href='./company'">
                                <div style="width: 100%; margin-left: 16px;">
                                    <div>카카오</div>
                                    <div >iOS 개발자 채용</div>
                                    <div>iOS · Swift · autolayout · RESTful-API · Firebase · FCM  · MVVM · GIT</div>
                                </div>
                                <div style="margin-right: 16px;">
                                    <button style="display: block;" onclick="addWishlist();">관심 기업 등록</button>
                                    <button style="display: block; margin-top: 10px ;" onclick="applyCompany();">지원하기</button>
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