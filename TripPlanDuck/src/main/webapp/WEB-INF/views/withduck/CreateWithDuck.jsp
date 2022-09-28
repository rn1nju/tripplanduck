<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동행 생성</title>
    <link rel="stylesheet" type="text/css" href="${path}/webapp/resources/css/withduck/CreateWithDuck.css }">
    <link rel="stylesheet" href="../../CSS/Common/Mainstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>

<body style="background-color: rgb(245, 243, 242)">
    <section style="background: white;">
        <header class="blog-header pt-5 py-5">
            <div class="row flex-nowrap justify-content-between align-items-center">
                <div class="col-4 pt-1"></div>
                <div class="col-4 text-center">
                <img src="../../IMG/Common/logo.png" width="200px">
            </div>
            <!-- 상단 우측 메뉴 -->
            <div class="col-4 d-flex justify-content-center align-items-center mt-3">
                <a class="mr-4 text-nowrap" href="#">로그인</a>
                <a class="mr-4 text-nowrap" href="#">회원가입</a>
                <!--
                <a href="#" class="me-5 align-items-center mb-1">
                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-cart2"
                    viewBox="0 0 16 16">
                    <path
                    d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                </svg>
                </a>
                -->
            </div>
            </div>
            </div>
        </header>

        <div class="container">
            <!-- 메인 메뉴 -->
            <ul class="nav justify-content-between">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false" style="font-size: 1.1em">
                HOME
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">@#$%#^ </a></li>
                </ul>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                aria-expanded="false">
                플래너
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">@#$%#^</a></li>
                <li><a class="dropdown-item" href="#">@#$%#^</a></li>
                <li><a class="dropdown-item" href="#">@#$%#^</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            여행지
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">@#$%#^</a></li>
            <li><a class="dropdown-item" href="#">@#$%#^</a></li>
        </ul>
    </li>  <li class="nav-item dropdown">
        <a class="nav-link dropdown" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
        aria-expanded="false">
        위드덕
        </a>
        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">@#$%#^</a></li>
        </ul>
    </li>

    <ul class="nav justify-content-end" id="search">
        <form class="d-flex">
            <li class="nav-item dropdown">
            <a class="nav-link dropdown p-0" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
            aria-expanded="false">
            <button type="submit" class="btn btn-white">
                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" fill="currentColor" class="bi bi-search"
                viewBox="0 0 16 16">
                <path
                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                </svg>
            </button>
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item"><input class="form-control me-2" type="search" placeholder="Search"
                    aria-label="Search"></a></li>
            </ul>
        </li>
        </form>
    </ul> 
    </ul>
    <hr class="mt-1">
</div>
</section>    

<!-- 타이틀 -->
<section class="all_title">
<div class="img_textContainer">
    <p class="img_text">동행 생성</p>
</div>
</section>
<!-- 이미지 생성 -->
<section class="zone1">
<div class="carousel_container">
    <div id="demo" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        </ul>
    
        <!-- The slideshow -->
        <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="car-img" src="../../IMG/WithDuck/city1.PNG" alt="Los Angeles">
            <!-- <div>
                <img class="empty_img" src="../../IMG/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
            </div>
            <p>업로드할 사진을 추가해보세요!</p>
            <label for="file1" class="file">사진추가</label>
            <input type="file" name="file1" id="file1" style="display: none;"> -->
        </div>
        <div class="carousel-item">
            <!-- <img class="car-img" src="../../IMG/WithDuck/flower1.PNG" alt="Chicago"> -->
            <div class="empty">
                <div>
                    <img class="empty_img" src="../../IMG/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
                </div>
                <p>업로드할 사진을 추가해보세요!</p>
                <label for="file2" class="file">사진추가</label>
                <input type="file" name="file2" id="file2" style="display: none;">
            </div>
        </div>
        <div class="carousel-item">
            <!-- <img class="car-img" src="../../IMG/WithDuck/flower2.PNG" alt="New York"> -->
            <div class="empty">
                <div>
                    <img class="empty_img" src="../../IMG/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
                </div>
                <p>업로드할 사진을 추가해보세요!</p>
                <label for="file3" class="file">사진추가</label>
                <input type="file" name="file3" id="file3" style="display: none;">
            </div>
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

<!-- 필터 등록 -->
<section class="zone2">
<div class="filter">
    <div class="filter_container">
        <div class="filter_location">지역</div>
        <div class="filter_gender">희망성별</div>
        <div class="filter_personel">인원</div>
        <div class="filter_personel">날짜</div>
    </div>
    <div class="filter_containerValue">
        <div class="location_value">
            <div><button class="location_btn">서울</button></div>
            <div><button class="location_btn">강원</button></div>
            <div><button class="location_btn">제주</button></div>
            <div><button class="location_btn">부산</button></div>
            <div><button class="location_btn">경기</button></div>
            <div><button class="location_btn">인천</button></div>
            <div><button class="location_btn">충청</button></div>
            <div><button class="location_btn">경상</button></div>
            <div><button class="location_btn">전라</button></div>
        </div>
        <div class="gender_value">
            <button class="gender_btn">남자만</button>
            <button class="gender_btn">여자만</button>
            <button class="gender_btn">성별무관</button>
        </div>
        <label for="customRange2" class="form-label"></label>
        <div>
            <input type="range" class="form-range" min="0" step="1" max="20" id="customRange2" oninput="document.getElementById('value2').innerHTML=this.value;">
            <span id="value2"></span>
            명
        </div>
        <div class="date_container">
            <div class="start_container">
                <label for="start">Start date:</label>

                <input type="date" id="start" name="trip-start"
                    value="2018-07-22"
                    min="2018-01-01" max="2018-12-31">
            </div>
            <div class="end_container">
                <label for="start">End date:</label>
    
                <input type="date" id="start" name="trip-start"
                    value="2018-07-22"
                    min="2018-01-01" max="2018-12-31">
            </div>
        </div>
    </div>
</div>
</section>
<!-- 내용, 제목 -->
<section class="zone3">
<div class="content_container">
    <p>제목</p>
        <input type="text" class="with_title" name="" id="" placeholder="제목을 입력하세요!" required>
    
    <p>내용</p>
        <textarea class="with_content" name="" id="" cols="30" rows="10" placeholder="내용을 입력하세요!" required></textarea>
</div>
</section>
<div style="text-align: center; height: 100px; vertical-align: middle;">
<button id="submit">등록</button>
<button id="return">취소</button>
</div>
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
$('.location_btn').on('click', function(){
$('.location_btn').removeClass('selected');
$(this).addClass('selected');
});
$('.gender_btn').on('click', function(){
$('.gender_btn').removeClass('selected');
$(this).addClass('selected');
});
</script>