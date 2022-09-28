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
    <title>동행 상세보기</title>
    <link rel="stylesheet" type="text/css" href="../../CSS/WithDuck/WithDuckDetail.css">
    <link rel="stylesheet" href="../../CSS/Common/Mainstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body style="background-color: rgb(245, 243, 242);">
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
    </section>
    <!----------------------------------------------------------------------------------------------------------->
    <section class="zone1">
        <div class="carousel_container">
            <div id="demo" class="carousel slide pointer-event" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class=""></li>
                <li data-target="#demo" data-slide-to="1" class="active"></li>
                <li data-target="#demo" data-slide-to="2" class=""></li>
                </ul>
            
                <!-- The slideshow -->
                <div class="carousel-inner">
                <div class="carousel-item">
                    <img class="car-img" src="../../IMG/WithDuck/city1.PNG" alt="Los Angeles">
                </div>
                <div class="carousel-item active">
                    <img class="car-img" src="../../IMG/WithDuck/flower1.PNG" alt="Chicago">
                </div>
                <div class="carousel-item">
                    <img class="car-img" src="../../IMG/WithDuck/flower2.PNG" alt="New York">
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
        <!-- 제목 -->
        <div style="margin: 60px; text-align: center;">
            <h5>8월 28일 ~ 8월 31일 제주도 갑니다!</h5>
        </div>
        <!-- 지역, 모집 인원 ,희망 성별, 요일 -->
        <div class="filter">
            <div>지역 
                <span>제주</span>
            </div>
            <div>모집 인원
                <span>5명</span>
            </div>
            <div>희망 성별
                <span>남자만</span>
            </div>
            <div>여행 일정
                <span>2022-08-28</span> ~ <span>2022-08-31</span>
            </div>
        </div>
        <!-- 작성자 프로필, 이름, 나이, 성별 -->
        <div class="profile-container">
            <div class="profile-img">
                <img src="../../IMG/WithDuck/girl.png">
            </div>
            <div class="profile-name" style="float: left;">
                <span style="font-size: 10px;">박노경</span>
            </div>
            <br>
            <div class="profile-age" style="float: left;">
                <span style="font-size: 10px;">20대 /</span>
                <span style="font-size: 10px;"> 남성</span>
            </div>
        </div>
        <!-- 내용 -->
        <div style="margin-left: 10%; margin-top: 20px;">
            <div>
                같이 재밌게 놀다 와요
            </div>
            <div class="tags">
                <a href="">
                    #제주
                </a>
                <a href="">
                    #여행
                </a>
            </div>
        </div>
    </section>
<div style="text-align: center; margin: 50px;">
    <button id="join">
        동행참여
    </button>
    <button id="join">
        목록으로
    </button>
    <button id="join">
        수정하기
    </button>
</div>
</body>
</html>