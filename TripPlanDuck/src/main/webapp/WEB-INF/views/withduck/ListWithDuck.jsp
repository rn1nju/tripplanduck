<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동행인 찾기</title>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/withduck/ListWithDuck.css">
</head>
<body>
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
    </li>
    <li class="nav-item dropdown">
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
<!-- Bootstrap JS -->
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
    crossorigin="anonymous"></script>
</section>
<!--------------------------------------------------------------------------------------->

<section class="zone1">
<div class="img_textContainer">
    <p class="img_text">동행인 찾기</p>
</div>
</section>
<section class="zone2">
<div class="go_withduck">
    <a href="">
        <img src="${path}/resources/images/WithDuck/go.png" alt="">
        <br>위드덕 생성하러 가기!
    </a>
</div>
<div class="filter">
    <div class="filter_container">
        <div class="filter_location">지역</div>
        <div class="filter_gender">희망성별</div>
        <div class="filter_personel">인원</div>
        <div class="filter_personel">날짜</div>
    </div>
    <div class="filter_containerValue">
        <div class="location_value">
               <!-- <div><a href="">서울</a></div>
                    <div><a href="">강원</a></div>
                    <div><a href="">제주</a></div>
                    <div><a href="">부산</a></div>
                    <div><a href="">경기</a></div>
                    <div><a href="">인천</a></div>
                    <div><a href="">충청</a></div>
                    <div><a href="">경상</a></div>
                    <div><a href="">전라</a></div> -->
                    
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
            <div class="filter-btn">
                <button class="favorite styled1" type="button">
                필터 검색
                </button>
        
                <button class="favorite styled2" type="button">
                필터 초기화
                </button>
            </div>
    </section>
    <section class="zone3">
        <div class="container">
            <div class="sort" style="text-align: right;">
                <input type="radio" name="radio" id="" value="최신순" checked>최신순
                <input type="radio" name="radio" id="" value="조회순">조회순
                <button>모집중인 글만 보기</button>
            </div>
            <div class="row row-cols-2 row-cols-lg-4 g-2 g-lg-3">
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/city1.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/man (1).png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div>
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/flower1.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/girl.png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div>
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/river2.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/girl.png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div>
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/river2.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/girl.png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div> 
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/flower3.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/girl.png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div> 
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/flower3.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/girl.png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div> 
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/flower4.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/man (2).png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div>
                <div class="col">
                    <div class="p-3 border bg-light">
                        <a href="">
                            <img class="intro-img" src="../../IMG/WithDuck/flower4.PNG" alt="">
                        </a>
                        <p class="title">안녕하세요</p>
                        <p>안녕하세요</p>
                        <p class="nickName"><img src="../../IMG/WithDuck/man (2).png"> 바보</p> 
                        <p class="good">12</p>
                        <p class="readCount">123</p>
                    </div>
                </div>
            </div>
        </div>
        <nav aria-label="..." style="margin-top: 50px;">
            <ul class="pagination justify-content-center">
            <li class="page-item disabled">
                <span class="page-link">이전</span>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active" aria-current="page">
                <span class="page-link">2</span>
            </li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            <li class="page-item">
                <a class="page-link" href="#">다음</a>
            </li>
            </ul>
        </nav>
    </section>
    
    
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