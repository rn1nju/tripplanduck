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
    <title>Document</title>
    <link rel="stylesheet" href="../../CSS/WithDuck/WithDuckChat.css">
    <link rel="stylesheet" href="../../CSS/Common/Mainstyle.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
</head>
<body style="background-color: rgb(245, 243, 242)">
    <section style="background-color: white;">
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
<!------------------------------------------------------------------------------------------------------------------------------------------------>

    <div class="allDiv">
        <!--채팅 목록, 참여인원-->
        <div class="leftDiv">
            <!-- 채팅 목록-->
            <div class="chatListContainer">
                <div class="chatListTitle">
                        <span class="title">
                            채팅 목록
                        </span>
                </div>
                <div class="chatList">
                        <div class="with">
                            <img class="profile" src="../../IMG/Common/프사.png" alt="">
                            <div class="withTitle">
                                <a href="">8월 28일 ~ 8월 31일 제주도 갑니다</a>
                            </div>
                            <div class="personExit">
                                <div class="currentPerson">5명</div>
                                <div class="withOut">
                                    <a href="">
                                        <img class="exit" src="../../IMG/WithDuck/logout.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="with">
                            <img class="profile" src="../../IMG/Common/프사.png" alt="">
                            <div class="withTitle">
                                <a href="">8월 28일 ~ 8월 31일 제주도 갑니다</a>
                            </div>
                            <div class="personExit">
                                <div class="currentPerson">5명</div>
                                <div class="withOut">
                                    <a href="">
                                        <img class="exit" src="../../IMG/WithDuck/logout.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="with">
                            <img class="profile" src="../../IMG/Common/프사.png" alt="">
                            <div class="withTitle">
                                <a href="">8월 28일 ~ 8월 31일 제주도 갑니다</a>
                            </div>
                            <div class="personExit">
                                <div class="currentPerson">5명</div>
                                <div class="withOut">
                                    <a href="">
                                        <img class="exit" src="../../IMG/WithDuck/logout.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="with">
                            <img class="profile" src="../../IMG/Common/프사.png" alt="">
                            <div class="withTitle">
                                <a href="">8월 28일 ~ 8월 31일 제주도 갑니다</a>
                            </div>
                            <div class="personExit">
                                <div class="currentPerson">5명</div>
                                <div class="withOut">
                                    <a href="">
                                        <img class="exit" src="../../IMG/WithDuck/logout.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="with">
                            <img class="profile" src="../../IMG/Common/프사.png" alt="">
                            <div class="withTitle">
                                <a href="">8월 28일 ~ 8월 31일 제주도 갑니다</a>
                            </div>
                            <div class="personExit">
                                <div class="currentPerson">5명</div>
                                <div class="withOut">
                                    <a href="">
                                        <img class="exit" src="../../IMG/WithDuck/logout.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                </div>
                
            </div>
            <!--참여 인원-->
            <div class="chatPerContainer">
                <div class="chatPer">
                    <span class="title">
                        참여 인원
                    </span>
                </div>
                <div class="chatPerList">
                    <div class="profile_name">
                        <div class="chat_profile">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </div>
                        <div class="chat_name">
                            <span>박노경</span>
                        </div>
                    </div>
                    <div class="profile_name">
                        <div class="chat_profile">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </div>
                        <div class="chat_name">
                            <span>박노순</span>
                        </div>
                    </div>
                    <div class="profile_name">
                        <div class="chat_profile">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </div>
                        <div class="chat_name">
                            <span>박노</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 제목, 채팅창, 채팅 입력 -->
        <div class="rightDiv">
            <!-- 제목 부분 -->
            <div class="chatTitle">
                <!-- 나가기 버튼 -->
                <a href="">
                    <img class="exit" src="../../IMG/WithDuck/left-arrow.png">
                </a>
                <p class="withChat_title">8월 28일 ~ 8월 31일 제주도 갑니다</p>
            </div>
            <!-- 내용 부분 -->
            <div class="chatContent">
                <div class="chat_entry">
                    <span>박노경님이 입장하셨습니다.</span>
                </div>
                <div class="wrap">
                    <div></div>
                    <div class="chat ch1">
                        <div class="icon"><i class="fa-solid fa-user">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </i></div>
                        <div class="textbox">안녕하세요. 반갑습니다.</div>
                    </div>
                    <div class="chat ch2">
                        <div class="icon"><i class="fa-solid fa-user">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </i>
                        </div>
                        <div class="textbox">안녕하세요. 박노경입니다.</div>
                    </div>
                    <div class="chat ch1">
                        <div class="icon"><i class="fa-solid fa-user">
                            <img src="../../IMG/Common/프사.png" alt="">
                        </i>
                        </div>
                        <div class="textbox">요즘 어떻게 지내세요?</div>
                    </div>
                </div>
            </div>
            <!-- 채팅 입력 부분-->
            <div class="inputChat">
                <div class="message-box">
                    <textarea type="text" class="message-input" placeholder="메시지를 입력하세요."></textarea>
                    <a href="">
                        <img src="../../IMG/WithDuck/send.png" alt="">
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>