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

        <div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">
                        <form name="companyJoin" method="post" action="joinOk.do">
                            <div style="display: flex; justify-content: center;"><img style="width: 500px; height: auto;object-fit: cover;" src="./img/hire.png";></div>
                            <div> 
                                
                                <h1>회원가입(기업)</h1>
                                <div style="margin-top: 40px;">
                                    <dl>
                                        <dt class="join-company-info-head">이메일</dt>
                                        <dd>
                                            <div>
                                                <input type="text" size="20" name="cmail">
                                                <input type="button" value="중복확인" id="join_button">
                                            </div>
                                        </dd>
                                    </dl>
                                </div>
                                <div style="display: flex; justify-content: space-between;">                                                       
                                        
                                    <div>
                                        <dl>
                                            <dt class="join-company-info-head">비밀번호</dt>
                                            <dd>
                                                <input type="text" size="20" name="cpw">
                                            </dd>
                                        </dl>

                                        
                                        <dl>
                                            <dt class="join-company-info-head">기업명</dt>
                                            <dd>
                                                <input type="text" size="20" name="cname">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">산업</dt>
                                            <dd>
                                                <input type="text" size="20" name="ccategory">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">기업구분</dt>
                                            <dd>
                                                <input type="text" size="20" name="csize">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">대표자</dt>
                                            <dd>
                                                <input type="text" size="20" name="ceoname">
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">4대 보험</dt>
                                            <dd>
                                                <input type="text" size="20" name="cinsurance">
                                            </dd>
                                        </dl>


                                        <dl>
                                            <dt class="join-company-info-head">주소</dt>
                                            <dd>
                                                <input type="text" size="60" name="caddress">
                                            </dd>
                                        </dl>
                                        
                                    </div>

                                    <div>
                                        <dl>
                                            <dt class="join-company-info-head">비밀번호확인</dt>
                                            <dd><input type="text" size="20" name="cpwcheck"></dd>
                                        </dl>

                                        <dl>
                                            <dt class="join-company-info-head">사업자 번호</dt>
                                            <dd><input type="text" size="20" name="cnumber"></dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">사원수</dt>
                                            <dd><input type="text" size="20" name="cworkers"></dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">설립일</dt>
                                            <dd><input type="text" size="20" name="cdate"></dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">주요사업</dt>
                                            <dd><input type="text" size="20" name="cmaintask"></dd>
                                        </dl>
                                        <dl>
                                            <dt class="join-company-info-head">홈페이지</dt>
                                            <dd><input type="text" size="20" name="chomepage"></dd>
                                        </dl>
                                    </div>
                                </div>              
                            <div>
                                <div style="margin-top: 16px;"  ><textarea style="width: 600px;height: 200px; "></textarea><br></div>
                                <div style="margin-top: 16px;" > <input type="checkbox" style="margin-right: 8px;" readonly>약관에 동의합니다.</div>
                                <div style="margin-top: 16px;"><button onclick="location.href='./joinOk'" id="join_button">가입완료</button></div>
                            </div>   
                        </form>
                    
        </div>
    </body>
</html>