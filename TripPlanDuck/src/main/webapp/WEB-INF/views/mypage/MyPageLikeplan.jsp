<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<jsp:include page="../common/header.jsp"/>
  <!-- MyPage CSS -->
  <link rel="stylesheet" type="text/css" href="${ path }/css/mypage/Mypage.css">

  <!-- fontawesome CSS -->
  <script src="https://kit.fontawesome.com/f8167db045.js" crossorigin="anonymous"></script>
<body>
	<!-- Mypage ���� -->
    <!-- ��ü �����̳� -->
    <div class="container">
      <!-- ���� �����̳� -->
        <div class="p-5 top-container">
          <div class="userMypageMenu">
            <div class="userInfo">
              <img src="${ path }/images/common/����.png" alt="profile" style="width: 100px; height: 100px; border-radius: 50%;">
              <div class="pt-1 nickName">ŷ����</div>
            </div>
            <div class="py-4 px-2 btn-UserMypageMenu">
              <button class="btn btn-outline-warning btn-sm btn-block">�� �����</button>
              <button class="btn btn-outline-warning btn-sm btn-block" data-toggle="modal"
                data-target="#changeUserInfo">ȸ����������</button>
            </div>
          </div>
        </div>

        <!-- ���� �޴� -->
        <div class="nav-container">
          <div id="horizontal-underline"></div>
          <ul class="nav justify-content-center">
            <li class="mr-4 nav-item">
              <a class="nav-link" href="#likePlan">Like Plan</a>
            </li>
            <li class="mr-4 nav-item">
              <a class="nav-link" href="MyPageLiketrip.jsp#myPlanner">�� ������</a>
            </li>
            <li class="mr-4 nav-item">
              <a class="nav-link" href="../Mypage/MypageComment.html#myComment">���� ����</a>
            </li>
          </ul>
        </div>

        <!-- ���� �����̳� -->
        <div class="content-container">
          <div id="likePlan">
            <h3 class="section-title">Like Plan</h3>
            <div class="card mb-3 likeCard" style="max-width: 800px;">
              <div class="row g-0">
                <div class="col-md-4">
                  <img src="${ path }/images/trip/gyeongju.jpg" class="img-fluid rounded-start imgSize" alt="...">
                </div>
                <div class="col-md-8">
                  <div class="card-body">
                    <i class="fa-sharp fa-solid far fa-heart fa-lg" id="heartIcon"></i>
                  <div class="info-container-top">
                    <div class="card-title title mt-3">
                      <h5>������</h5>
                    </div>
                    <div class="card-title text-content mt-3">
                      <h5>����</h5>
                    </div>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">�ۼ���</p>
                    <p class="card-text text-content">
                      <a href="">
                        �ŵ���
                      </a>
                    </p>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">���� ����</p>
                    <p class="card-text text-content">3�� 4��</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card mb-3 likeCard" style="max-width: 800px;">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="${ path }/images/trip/jeju.jpg" class="img-fluid rounded-start imgSize" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <i class="fa-sharp fa-solid fa-heart fa-lg" id="heartIcon"></i>
                  <div class="info-container-top">
                    <div class="card-title title mt-3">
                      <h5>������</h5>
                    </div>
                    <div class="card-title text-content mt-3">
                      <h5>����</h5>
                    </div>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">�ۼ���</p>
                    <p class="card-text text-content">
                      <a href="">
                        ��¯��
                      </a>
                    </p>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">���� ����</p>
                    <p class="card-text text-content">7�� 8��</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card mb-3 likeCard" style="max-width: 800px;">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="${ path }/images/trip/busan.jpg" class="img-fluid rounded-start imgSize" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <i class="fa-sharp fa-solid fa-heart fa-lg" id="heartIcon"></i>
                  <div class="info-container-top">
                    <div class="card-title title mt-3">
                      <h5>������</h5>
                    </div>
                    <div class="card-title text-content mt-3">
                      <h5>�λ�</h5>
                    </div>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">�ۼ���</p>
                    <p class="card-text text-content">
                      <a href="">
                        ���Ͻ�
                      </a>
                    </p>
                  </div>
                  <div class="info-container-top">
                    <p class="card-text title">���� ����</p>
                    <p class="card-text text-content">4�� 5��</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="wrap-downChevron">
          <abbr title="������">
	          <img class="down-chevron" src="${ path }/images/mypage/down-chevron.png">
          </abbr>
        </div>
      </div>

      <!-- ��й�ȣ Ȯ�� ��� -->
      <div class="modal fade" id="changeUserInfo" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">��й�ȣ ��Ȯ��</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <input type="text" class="inputPwd" placeholder="��й�ȣ �Է�">
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-outline-warning"
                onclick="location.href='UpdateForm.html'">Ȯ��</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>
    
    <!-- MyPage JS -->
    <!-- 
    	<script src="../../JS/Mypage/MypageMain.js"></script>
    -->