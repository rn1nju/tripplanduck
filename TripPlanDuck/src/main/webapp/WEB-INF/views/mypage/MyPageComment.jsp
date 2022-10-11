<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

	<jsp:include page="../common/header.jsp"/>
  
	<!-- MyPage CSS -->
	<link rel="stylesheet" type="text/css" href="${ path }/css/mypage/Mypage.css">
<body>
	<!-- Mypage ���� -->
      <!-- ��ü �����̳� -->
      <div class="container">
        <!-- ���� �����̳� -->
        <div class="p-5 top-container">
          <div class="userMypageMenu">
            <div class="userInfo">
              <img src="${ path }/images/common/����.png" alt="profile" style="width: 100px; height: 100px; border-radius: 50%;">
              <div class="pt-1 nickName">�г���</div>
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
              <div class="nav-link" href="../Mypage/MypageLikePlan.html">Like Plan</a>
            </li>
            <li class="mr-4 nav-item">
              <div class="nav-link" href="../Mypage/MypagePlanner.html#myPlanner">�� ������</a>
            </li>
            <li class="mr-4 nav-item">
              <div class="nav-link" href="#myComment">���� ����</a>
            </li>
          </ul>
        </div>

        <div class="content-container">
          <div id="myComment">
            <h3 class="section-title">���� ����</h3>
            <a>
            <div class="card mt-4 mb-2 commentCard" style="max-width: 900px;">
              <div>
                <div class="card-body">
                  <div class="destination">
                    <h4 class="card-title">���� �����</h4>
                    <span class="separator">|</span>
                    <h5 class="card-area">����</h5>
                  </div>
                  <p class="card-text">�Ƹ��ٿ����</p>
                  <p class="card-text"><small class="text-muted">2022-09-25</small></p>
                  <div class="card-btns">
                    <button type="button" class="btn btn-warning" onclick="location.href=''">����</button>
                    <button type="button" class="btn btn-secondary">����</button>
                  </div>
                </div>
              </div>
            </div>
            </a>
            <a>
            <div class="card mb-2 commentCard" style="max-width: 900px;">
              <div>
                <div class="card-body">
                  <div class="area">
                    <div class="destination">
                      <h4 class="card-title">���� �����</h4>
                      <span class="separator">|</span>
                      <h5 class="card-area">����</h5>
                    </div>
                  </div>
                  <p class="card-text">�Ƹ��ٿ����</p>
                  <p class="card-text"><small class="text-muted">2022-09-25</small></p>
                  <div class="card-btns">
                    <button type="button" class="btn btn-warning" onclick="location.href=''">����</button>
                    <button type="button" class="btn btn-secondary">����</button>
                  </div>
                </div>
              </div>
            </div>
            </a>
            <a>
            <div class="card mb-2 commentCard" style="max-width: 900px;">
              <div class="card-body">
                <div class="destination">
                  <h4 class="card-title">���� �����</h4>
                  <span class="separator">|</span>
                  <h5 class="card-area">����</h5>
                </div>
                <p class="card-text">�Ƹ��ٿ����</p>
                <p class="card-text"><small class="text-muted">2022-09-25</small></p>
                <div class="card-btns">
                  <button type="button" class="btn btn-warning" onclick="location.href=''">����</button>
                  <button type="button" class="btn btn-secondary">����</button>
                </div>
              </div>
            </div>
            </a>
          </div>
          <div class="wrap-downChevron">
            <img class="down-chevron" src="${ path }/images/mypage/down-chevron.png">
          </div>
        </div>
      </div>
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
            <input type="text" placeholder="��й�ȣ �Է�">
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-outline-warning" onclick="location.href='UpdateForm.html'">Ȯ��</button>
          </div>
        </div>
      </div>
    </div>
	
	<jsp:include page="../common/footer.jsp"/>

	<!-- MyPage JS -->
    <!-- 
    	<script src="../../JS/Mypage/MypageMain.js"></script>
    -->