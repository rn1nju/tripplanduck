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
                    <div class="pt-1 nickName">ŷ����</div>
                </div>
                <div class="py-4 px-2 btn-UserMypageMenu">
                    <button class="btn btn-outline-warning btn-sm btn-block">�� �����</button>
                    <button class="btn btn-outline-warning btn-sm btn-block" data-toggle="modal" data-target="#changeUserInfo">ȸ����������</button>
                </div>
            </div>
            
        </div>

        <!-- ���� �޴� -->
        <div class="nav-container">
            <div id="horizontal-underline"></div>
            <ul class="nav justify-content-center">
                <li class="mr-4 nav-item">
                    <!-- <a class="nav-link" href="#likePlan">Like Plan</a> -->
                    <a class="nav-link" href="../Mypage/MypageLikePlan.html">Like Plan</a>
                </li>
                <li class="mr-4 nav-item">
                    <a class="nav-link" href="#myPlanner">�� ������</a>
                </li>
                <li class="mr-4 nav-item">
                    <a class="nav-link" href="../Mypage/MypageComment.html#myComment">���� ����</a>
                </li>
            </ul>
        </div>

        <div class="content-container">
            <div id="myPlanner">
                <h3 class="section-title">�� ������</h3>
                    <!-- ������ ���� div -->
                    <div>
                      <select class="form-control">
                        <option>������ ����</option>
                        <option>����</option>
                      </select>
                    </div>
                    <a>
                    <div class="card mt-4 mb-3 likeCard" style="max-width: 800px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="https://www.myro.co.kr/getSpotImage/jeju?no=1000" class="img-fluid rounded-start imgSize" alt="...">
                            </div>
                            <div class="col-md-8">
                              <div class="card-body">
                                  <i class="fa-sharp fa-solid fa-heart fa-lg" id="heartIcon"></i>
                                  <div class="info-container-top">
                                      <div class="card-title title mt-3">
                                        <h5>��Ҹ�</h5>
                                      </div>
                                      <div class="card-title text-content mt-3">
                                        <h5>�����ؼ�����</h5>
                                      </div>
                                  </div>
                                  <div class="info-container-top">
                                      <p class="card-text title">���ø�</p>
                                      <p class="card-text text-content">����</p>
                                  </div>
                                  <div class="info-container-top">
                                      <p class="card-text title">�ּ�</p>
                                      <p class="card-text text-content">����Ư����ġ�� ���ֽ� �Ѹ��� �Ѹ��� 329-10</p>
                                  </div>
                              </div>
                          </div>
                        </div>
                    </div>
                    </a>
                    <div class="card mb-3 likeCard" style="max-width: 800px;">
                      <div class="row g-0">
                          <div class="col-md-4">
                              <img src="https://www.myro.co.kr/getSpotImage/jeju?no=1195" class="img-fluid rounded-start imgSize" alt="...">
                          </div>
                          <div class="col-md-8">
                              <div class="card-body">
                                  <i class="fa-sharp fa-solid fa-heart fa-lg" id="heartIcon"></i>
                                  <div class="info-container-top">
                                      <div class="card-title title mt-3">
                                        <h5>��Ҹ�</h5>
                                      </div>
                                      <div class="card-title text-content mt-3">
                                        <h5>�����ؼ�����</h5>
                                      </div>
                                  </div>
                                  <div class="info-container-top">
                                      <p class="card-text title">���ø�</p>
                                      <p class="card-text text-content">����</p>
                                  </div>
                                  <div class="info-container-top">
                                      <p class="card-text title">�ּ�</p>
                                      <p class="card-text text-content">����Ư����ġ�� ���ֽ� �Ѹ��� �Ѹ��� 329-10</p>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                    <div class="card mb-3 likeCard" style="max-width: 800px;">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <img src="https://www.myro.co.kr/getSpotImage/jeju?no=1195" class="img-fluid rounded-start imgSize" alt="...">
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <i class="fa-sharp fa-solid fa-heart fa-lg" id="heartIcon"></i>
                                    <div class="info-container-top">
                                        <div class="card-title title mt-3">
                                          <h5>��Ҹ�</h5>
                                        </div>
                                        <div class="card-title text-content mt-3">
                                          <h5>�����ؼ�����</h5>
                                        </div>
                                    </div>
                                    <div class="info-container-top">
                                        <p class="card-text title">���ø�</p>
                                        <p class="card-text text-content">����</p>
                                    </div>
                                    <div class="info-container-top">
                                        <p class="card-text title">�ּ�</p>
                                        <p class="card-text text-content">����Ư����ġ�� ���ֽ� �Ѹ��� �Ѹ��� 329-10</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
            <div class="wrap-downChevron">
              <img class="down-chevron" src="${ path }/images/mypage/down-chevron.png">
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
                    <input type="text" style="width: 70%; height: 40px" placeholder="��й�ȣ �Է�">
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