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
			<h1>ȸ�� ���� ����</h1>
			<img class="mb-4" src="${ path }/images/common/����.png" alt="">
		</div>
		<form>
			<table class="signup">
				<tr>
					<td class="title">���̵�</td>
				</tr>
				<tr>
					<td>
						<input class="form-control" type="text" placeholder="���̵�" readonly>
					</td>
              	</tr> 
              	<tr>
                	<td class="title">�г���</td>
              	</tr>
              	<tr>
                	<td>
                  		<input type="text" class="form-control" id="nickname" placeholder="�г���" required>
                	</td>
                	<td><button class="form-control">�ߺ�Ȯ��</button></td>
              	</tr> 
              	<tr>
                	<td class="title">��й�ȣ����</td>
              	</tr>
              	<tr>               
                	<td>
                  		<input type="text" class="form-control" id="password" placeholder="��й�ȣ" required>
                	</td>
              	</tr>
              	<tr>
                	<td class="title">��й�ȣ ���Է�</td>
              	</tr>
              	<tr>
                	<td>
                  		<input type="text" class="form-control" id="confirm_password" placeholder="��й�ȣȮ��" required>
                	</td>
              	</tr>
              	<tr>
                	<td class="title">�̸���</td>
              	</tr>
              	<tr>
                	<td>
                  		<input type="text" class="form-control" id="email" placeholder="abc@gmail.com" required>
                	</td>
                	<td><button class="form-control">�����ϱ�</button></td>
              	</tr>
              	<tr>
                	<td>
                		<input type="text" class="form-control" id="email" required>
                	</td>
                	<td><button class="form-control">������ȣȮ��</button></td>
              	</tr>
              	<tr>
                	<td>����</td>
              	</tr>
              	<tr>
                	<td class="form-control">
                  		<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="female" style="width:18px; height:18px; margin-left: 3px;">
                  		<label class="form-check-label" for="inlineRadio1" style="margin-left: 25px;">����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                  		<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="male" style="width:18px; height:18px;">
                  		<label class="form-check-label" for="inlineRadio1">����</label>
                	</td>
              	</tr>
              	<tr>
                	<td>���ɴ�</td>
              	</tr>
              	<tr>
                	<td>
                  		<label class="test_obj">
                    		<input type="radio" name="age" value="banana">
                    		<span>~20��</span>
                  		</label>
                  		<label class="test_obj">
                      		<input type="radio" name="age" value="lemon">
                      		<span>30��</span>
                  		</label>
                  		<label class="test_obj">
                    		<input type="radio" name="age" value="lemon">
                    		<span>40��</span>
                  		</label>
                  		<label class="test_obj">
                    		<input type="radio" name="age" value="lemon">
                    		<span>50��~</span>
                  		</label>
                	</td>
              	</tr>
            </table>
            <div class="updateBtn pt-2">
            	<button type="button" class="btn  btn-outline-warning btn-warning" onclick="location.href=''">����</button>
            	<button type="button" class="btn btn-secondary">���</button>
            </div>
        </form>
        <div class="memberOutBtn">
         	<button type="button" class="btn btn-secondary" onclick="location.href='MemberOut.html'">ȸ��Ż��</button>
        </div>
        </div>
      </main>
      </div>
	<jsp:include page="../common/footer.jsp"/>
      