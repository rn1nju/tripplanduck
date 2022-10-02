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
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
    <!-- mainstyle CSS -->
    <link rel="stylesheet" href="${path }/resources/css/common/style.css" type="text/css" />
    <link rel="stylesheet" href="${path }/resources/css/common/font-icons.css" type="text/css" />

    <!-- WithDuck CSS-->
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/withduck/CreateWithDuck.css">
    
    <!-- Summernote CSS -->
    <link rel="stylesheet" href="${path }/resources/css/withduck/summernote/summernote-lite.css">

    <title>동행 생성</title>
</head>

<!-- 메인 로고와 상단 우측 메뉴 포함한 header> -->
<body class="stretched">
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
                <img class="car-img" src="${path}/resources/images/WithDuck/flower4.PNG" alt="Los Angeles">
                <!-- <div>
                    <img class="empty_img" src="${path}/resources/images/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
                </div>
                <p>업로드할 사진을 추가해보세요!</p>
                <label for="file1" class="file">사진추가</label>
                <input type="file" name="file1" id="file1" style="display: none;"> -->
            </div>
            <div class="carousel-item">
                <!-- <img class="car-img" src="${path}/resources/images/WithDuck/flower1.PNG" alt="Chicago"> -->
                <div class="empty">
                    <div>
                        <img class="empty_img" src="${path}/resources/images/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
                    </div>
                    <p>업로드할 사진을 추가해보세요!</p>
                    <label for="file2" class="file">사진추가</label>
                    <input type="file" name="file2" id="file2" style="display: none;">
                </div>
            </div>
            <div class="carousel-item">
                <!-- <img class="car-img" src="${path}/resources/images/WithDuck/flower2.PNG" alt="New York"> -->
                <div class="empty">
                    <div>
                        <img class="empty_img" src="${path}/resources/images/WithDuck/photo.png" style="width: 20px; height: 20px;" alt="">
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
    <section class="zone2" >
      <div class="filter">
        <div class="filter_container">
            <div class="filter_location" style="display: flex !important; justify-content: center;
            align-items: center;  border-bottom: 1px solid #a7a2a28f; height: 101.6px;">지역</div>
            <div class="filter_gender" style="display: flex !important; justify-content: center;
            align-items: center;  border-bottom: 1px solid #a7a2a28f; height: 50.8px;">희망성별</div>
            <div class="filter_age" style="display: flex !important; justify-content: center;
            align-items: center;  border-bottom: 1px solid #a7a2a28f; height: 50.8px;">연령대</div>
            <div class="filter_personel" style="display: flex !important; justify-content: center;
            align-items: center;  border-bottom: 1px solid #a7a2a28f; height: 50.8px;">인원</div>
            <div class="filter_personel" style="display: flex !important; justify-content: center;
            align-items: center; height: 53.8px;">날짜</div>
        </div>
    
        <div class="filter_containerValue">
                    <div class="location_value" style="border-bottom: 0;">
                        <div><button class="location_btn">서울특별시</button></div>
                        <div><button class="location_btn">부산광역시</button></div>
                        <div><button class="location_btn">인천광역시</button></div>
                        <div><button class="location_btn">광주광역시</button></div>
                        <div><button class="location_btn">대전광역시</button></div>
                        <div><button class="location_btn">대구광역시</button></div>
    
                    </div>
    
                    <div class="location_value">
                        <div><button class="location_btn">강원도</button></div>
                        <div><button class="location_btn">제주도</button></div>
                        <div><button class="location_btn">경기도</button></div>
                        <div><button class="location_btn">충청도</button></div>
                        <div><button class="location_btn">경상도</button></div>
                        <div><button class="location_btn">전라도</button></div>
                    </div>
    
                    <div class="gender_value">
                        <button class="gender_btn">남자</button>
                        <button class="gender_btn">여자</button>
                        <button class="gender_btn">성별무관</button>
                    </div>
    
                    <div class="age_value">
                        <button class="age_btn">~20대</button>
                        <button class="age_btn">30대</button>
                        <button class="age_btn">40대</button>
                        <button class="age_btn">50대 이상</button>
                    </div>
    
                    <label for="customRange2" class="form-label"></label>
                    <div style="display: flex; align-items: center; justify-content: center; position: relative; bottom: 20px; height: 50.8px;     border-bottom: 1px solid #a7a2a28f ;">
                        <input type="range" class="form-range" min="0" step="1" max="20" id="customRange2" oninput="document.getElementById('value2').innerHTML=this.value+'명';">
                        <span id="value2" style="position:relative; left:5px; bottom:2px; display: inline-block; width: 40px;">10명</span>
                        
                    </div>
                    <div class="date_container">
                        <div class="start_container">
                            <label for="start">출발일:</label>
        
                            <input type="date" id="start" name="trip-start"
                                value="2018-07-22"
                                min="2018-01-01" max="2018-12-31" style="margin-left:10px;">
                        </div>
                        <div class="end_container">
                            <label for="start">도착일:</label>
                
                            <input type="date" id="end" name="trip-end"
                                value="2018-07-22"
                                min="2018-01-01" max="2018-12-31" style="margin-left:10px;">
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
        
        <p style="margin-top: 10px;">내용</p>
        <textarea id="summernote" name="editordata" required></textarea>
    </div>
    </section>
    <div style="text-align: center; display: flex; align-items: center; justify-content: center; margin-bottom: 10px; position: relative; bottom: 50px;">
        <button class="btn btn-outline-warning" type="button">등록</button>
        <button class="btn btn-outline-warning" type="button">취소</button>
    </div>

    <!-- 푸터 -->
  <div class="container-fluid p-0">
    <footer id="footer" class="light">
      <div id="copyrights">
        <div class="container">
          <div class="row col-mb-30">
            <div class="col-md-6 text-center text-md-start">
              Copyrights &copy; 2022 All Rights Reserved by TripPlanDuck Inc.<br />
              <div class="copyright-links"><a href="#">이용약관</a> / <a href="#">개인정보처리방침</a></div>
            </div>
            <div class="col-md-6 text-center text-md-end">
              <div class="d-flex justify-content-center justify-content-md-end">
                <a href="#" class="social-icon si-small si-borderless si-facebook">
                  <i class="icon-facebook"></i>
                  <i class="icon-facebook"></i>
                </a>
                <a href="#" class="social-icon si-small si-borderless si-twitter">
                  <i class="icon-twitter"></i>
                  <i class="icon-twitter"></i>
                </a>
                <a href="#" class="social-icon si-small si-borderless si-gplus">
                  <i class="icon-gplus"></i>
                  <i class="icon-gplus"></i>
                </a>
                <a href="#" class="social-icon si-small si-borderless si-github">
                  <i class="icon-github"></i>
                  <i class="icon-github"></i>
                </a>
              </div>
              <div class="clear"></div>
              <i class="icon-envelope2"></i> info@TripPlanDuck.com <span class="middot">&middot;</span>
              <i class="icon-headphones"></i> +82-02-1234-5678
            </div>
            <div id="gotoTop" class="icon-angle-up"></div>
          </div>
        </div>
      </div>
    </footer>
  </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!--jQuery-->
    <script src="${path }/resources/js/common/jquery-3.6.0.min.js"></script>

    <!-- JavaScripts -->
    <script src="${path }/resources/js/common/plugins.min.js"></script>
    <script src="${path }/resources/js/common/functions.js"></script>

    <!-- summernote JS -->
    <script src="${path }/resources/js/Summernote/summernote-lite.js"></script>
    <script src="${path }/resources/js/Summernote/lang/summernote-ko-KR.js"></script>

</body>
<jsp:include page="../common/footer.jsp"/>
</html>

<script>
    $(document).ready(function() {
        //여기 아래 부분
        $('#summernote').summernote({
              height: 300,                 // 에디터 높이
              minHeight: null,             // 최소 높이
              maxHeight: null,             // 최대 높이
              focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
              lang: "ko-KR",               // 한글 설정
              placeholder: '내용을 입력하세요!'   //placeholder 설정
        });
    });
        $('.location_btn').on('click', function(){
        $('.location_btn').removeClass('selected');
        $(this).addClass('selected');
        });
        $('.gender_btn').on('click', function(){
        $('.gender_btn').removeClass('selected');
        $(this).addClass('selected');
        });
        $('.age_btn').on('click', function(){
        $('.age_btn').removeClass('selected');
        $(this).addClass('selected');
});
</script>