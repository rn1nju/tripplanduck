<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

	<jsp:include page="../common/header.jsp"/>
	
	<!-- UpdateForm CSS -->
	<link rel="stylesheet" type="text/css" href="${ path }/css/mypage/UpdateForm.css">
<body>
	<!-- ȸ�� ���� ���� -->
	<!-- ��ü �����̳� -->
	<div class="container">
	<main class="form-signup m-auto">
		<div>
		<div class="updateFormInfo pt-3">
			<h1>ȸ�� ����</h1>
			<img class="mb-4" src="${ path }/images/common/����.png" alt="">
		</div>
		<form>
			<table class="signup">
				<tr>
					<td class="title">���̵�</td>
				</tr>
				<tr>
					<td>
						<a class="form-control" type="text" placeholder="���̵�" disabled="disabled">${ member.memberId }</a>
					</td>
              	</tr> 
              	<tr>
                	<td class="title">�г���</td>
              	</tr>
              	<tr>
                	<td>
                  		<a type="text" class="form-control" id="nickname" placeholder="�г���" disabled="disabled">${ member.memberNickname }</a>
                	</td>
              	</tr> 
              	<tr>
                	<td class="title">�̸���</td>
              	</tr>
              	<tr>
                	<td>
                  		<a type="text" class="form-control" id="email" placeholder="abc@gmail.com" disabled="disabled">${ member.memberEmail }</a>
                	</td>
              	</tr>
            </table>
            <div class="updateBtn pt-2">
            	<button type="button" class="btn  btn-outline-warning btn-warning" id="btnDelete" onclick="location.href=''">��ȸ�� ��ȯ</button>
            	<button type="button" class="btn btn-secondary" onclick="location.href='${ path }/admin/member'">���ư���</button>
            </div>
        </form>
        </div>
      </main>
      </div>
      
      <script>
		$(document).ready(() => {
			$("#btnDelete").on("click", () => {
				if(confirm("��ȸ������ ��ȯ �Ͻðڽ��ϱ�?")) {
					location.replace("${ path }/admin/memberChange?memberNo=${ member.memberNo }");
				}
			});
		});
	</script>
      
	<jsp:include page="../common/footer.jsp"/>
      