<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<jsp:include page="../common/header.jsp"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동행 상세보기</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
    <!-- mainstyle CSS -->
    <link rel="stylesheet" href="${path }/resources/css/common/style.css" type="text/css" />
    <link rel="stylesheet" href="${path }/resources/css/common/font-icons.css" type="text/css" />
    
    <!-- WithDuck CSS-->
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/withduck/WithDuckDetail.css">
</head>
<body class="stretched">
                	<h2>${reList}</h2>
    <section class="zone1">
        <div class="carousel_container">
            <div id="demo" class="carousel slide pointer-event" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1" class=""></li>
                <li data-target="#demo" data-slide-to="2" class=""></li>
                </ul>

                <!-- The slideshow -->
                <div class="carousel-inner">
	                <div class="carousel-item active">
		                <c:if test="${not empty withDuck.reList[0] && withDuck.reList[0] != null}">
	                    <img class="car-img" src="${path}/resources/upload/withduck/${withDuck.reList[0]}" alt="Los Angeles">
        		        </c:if>
	                </div>
	                <div class="carousel-item">
		                <c:if test="${not empty withDuck.reList[1] && withDuck.reList[1] != null}">
	                    <img class="car-img" src="${path}/resources/upload/withduck/${withDuck.reList[1]}" alt="Los Angeles">
		                </c:if>
	                </div>
	                <div class="carousel-item">
		                <c:if test="${not empty withDuck.reList[2] && withDuck.reList[2] != null}">
	                    <img class="car-img" src="${path}/resources/upload/withduck/${withDuck.reList[2]}" alt="Los Angeles">
		                </c:if>              
	                </div>
                </div>
            
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
                </a>
            
            </div>
        </div>
    </section>
    <!-- 내용 -->
    <section class="zone2">
        <div class="content_container" style="width: 1000px; margin: auto;">
            <!-- 제목 -->
            <div style="margin: 60px; text-align: center;">
                <h5>${withDuck.withTitle }</h5>
                <input type="checkbox" id="switch1" name="switch1" class="input__on-off">
                  <label for="switch1" class="label__on-off">
                    <span class="marble"></span>
                    <span class="on" style="position: relative; right:14px;">모집중</span>
                    <span class="off" style="position: relative; right: 6px;">모집완료</span>
                  </label>
            </div>
            <!-- 지역, 모집 인원 ,희망 성별, 요일 -->
            <div class="filter">
                <div>지역 
                    <span>${withDuck.withLocation }</span>
                </div>
                <div>모집 인원
                    <span>${withDuck.withPersonner }명</span>
                </div>
                <div>희망 성별
                    <span>${withDuck.withGender }</span>
                </div>
                <div>여행 일정
                    <span>${withDuck.withStartDate }</span> ~ <span>${withDuck.withEndDate }</span>
                </div>
            </div>
            <!-- 작성자 프로필, 이름, 나이, 성별 -->
            <div class="profile-container">
                <div class="profile-img">
                    <img src="${path}/resources/images/Common/프사.png">
                </div>
                <div class="profile-name" style="float: left;">
                    <span style="font-size: 10px;">${withDuck.withWriterNick }</span>
                </div>
                <br>
                <div class="profile-age" style="float: left;">
                    <span style="font-size: 10px;">20대 /</span>
                    <span style="font-size: 10px;"> 남성</span>
                </div>
            </div>
            <!-- 내용 -->
            <div style="margin-top: 20px; border: 3px solid #a7a2a28f; height: 400px; padding: 16px;">
                <div>
                    ${withDuck.withContent }
                </div>
                <div class="tags">
                  <div class="tag-container">
                    <a href="">
                        #제주
                    </a>
                  </div>
                  <div class="tag-container">
                      <a href="">
                          #여행
                      </a>
                  </div>
                </div>
            </div>
        </div>
    </section>
<!-- <div style="text-align: center; margin: 50px;">
    <button id="join">
        동행참여
    </button>
    <button id="join">
        목록으로
    </button>
    <button id="join">
        수정하기
    </button>
</div> -->

<div class="filter-btn" style="text-align: center; margin: 50px;">
    <button class="btn btn-outline-warning" type="button">
        동행참여
    </button>

    <button class="btn btn-outline-warning" type="button">
        목록으로
    </button>

    <button class="btn btn-outline-warning" type="button">
        수정하기
    </button>
</div>

<!-- Bootstrap JS -->
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!--jQuery-->
    <script src="${path }/resources/js/common/jquery-3.6.0.min.js"></script>

    <!-- JavaScripts -->
    <script src="${path }/resources/js/common/plugins.min.js"></script>
    <script src="${path }/resources/js/common/functions.js"></script>

</body>
<jsp:include page="../common/footer.jsp"/>
</html>