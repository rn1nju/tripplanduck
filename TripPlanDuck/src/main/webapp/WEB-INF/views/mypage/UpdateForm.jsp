	<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${ pageContext.request.contextPath }" />

<jsp:include page="../common/header.jsp" />
<head>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
	<!-- UpdateForm CSS -->
	<link rel="stylesheet" type="text/css" href="${ path }/css/mypage/UpdateForm.css">
	<!-- sweetalert2 alert -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>

<body>
	<!-- ȸ�� ���� ���� -->
	<!-- ��ü �����̳� -->
	<div class="container">
		<main class="form-signup m-auto">
			<div>
				<div class="updateFormInfo pt-3">
					<h1>ȸ�� ���� ����</h1> <img class="mb-4" src="${ path }/images/common/����.png" alt=""> </div>
				<form action="${ path }/mypage/profile" method="POST" id="updateForm" accept-charset="utf-8">
					<table class="signup">
						<tr>
							<td class="title">���̵�</td>
						</tr>
						<tr>
							<td style="font-size: 1.3rem;">${ loginMember.memberId }</td>
						</tr>
						<tr>
							<td class="title">�г���</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" id="nickname" name="memberNickname" required value="${ loginMember.memberNickname}">
							</td>
							<td>
								<button type="button" class="form-control" onclick="nicknameCheck()">�ߺ�Ȯ��</button>
							</td>
						</tr>
						<tr>
							<td class="title">��й�ȣ ����</td>
						</tr>
						<tr>
							<td>
								<input type="password" class="form-control" id="password" name="memberPassword" placeholder="������ ��й�ȣ �Է�(8�����̻�)" required>
							</td>
						</tr>
						<tr>
							<td class="title">��й�ȣ ���Է�</td>
						</tr>
						<tr>
							<td>
								<input type="password" onkeyUp="onKuPwConfirm(this)" class="form-control" id="password2" placeholder="������ ��й�ȣ ���Է�" required>
								<div class="eqErrorMsgWrap"></div>
							</td>
						</tr>
						<tr>
							<td class="title">�̸���</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" id="email" name="memberEmail" value="${ loginMember.memberEmail }" required>
							</td>
							<td>
								<input type="button" class="form-control" onclick="emailCheck()" value="�����ϱ�">
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control" id="emailNumber" placeholder="������ȣ 6�ڸ� �Է�" required>
							</td>
							<td>
								<input type="hidden" class="form-control" id="emailCheck2" value="������ȣȮ��" disabled="disabled" maxlength="6">
							</td>
						</tr>
						<tr>
							<td>����</td>
						</tr>
						<tr>
							<td class="form-control">
								<c:if test="${ loginMember.memberGender == 'F' }">
								<input class="form-check-input" type="radio" name="memberGender" id="genderFemale" value="F" style="margin-left: 3px;" checked> </c:if>
								<c:if test="${ loginMember.memberGender != 'F' }">
								<input class="form-check-input radioF" type="radio" name="memberGender" id="genderFemale" value="F" style="margin-left: 3px;" > </c:if>
								<label class="form-check-label radioF" for="memberGender" style="margin-left: 25px; margin-right: 40px;">����</label>
								
								<c:if test="${ loginMember.memberGender == 'M' }">
								<input class="form-check-input" type="radio" name="memberGender" id="genderMale" value="M" style="margin-left: 3px;" checked> </c:if>
								<c:if test="${ loginMember.memberGender != 'M' }">
								<input class="form-check-input" type="radio" name="memberGender" id="genderMale" value="M" > </c:if>
								<label class="form-check-label" for="genderMale" style="margin-left: 25px; margin-right: 40px;">����</label>
							</td>
						</tr>
						<tr>
							<td>���ɴ�</td>
						</tr>
						<tr>
							<td>
								<c:if test="${ loginMember.memberAge == 20 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="20" checked> 
										<span>~20��</span>
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge != 20 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="20">
										<span>~20��</span> 
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge == 30 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="30" checked>
										<span>30��</span>
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge != 30 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="30">
										<span>30��</span> 
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge == 40 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="40" checked>
										<span>40��</span>
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge != 40 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="40">
										<span>40��</span>
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge == 50 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="50" checked>
										<span>50��</span>
									</label>
								</c:if>
								<c:if test="${ loginMember.memberAge != 50 }">
									<label class="test_obj">
										<input type="radio" name="memberAge" value="50">
										<span>50��</span>
									</label>
								</c:if>
							</td>
						</tr>
					</table>
					<div class="updateBtn pt-2">
						<button type="submit" class="btn  btn-outline-warning btn-warning" onclick="updateFormSubmit()">����</button>
						<button type="button" class="btn btn-secondary" onclick="location.href='${path}/mypage?select=planner'">���</button>
					</div>
				</form>
				<div class="memberOutBtn">
					<button type="button" class="btn btn-secondary" onclick="location.href='${path}/mypage/dropout'">ȸ��Ż��</button>
				</div>
			</div>
		</main>
	</div>	
	<jsp:include page="../common/footer.jsp" />

	<script type="text/javascript">
	function nicknameCheck() {
		let memberNickname = $("#nickname").val().trim();
		if(memberNickname == "") {
			Swal.fire('�г����� �Է��ϼ���.')
			memberNickname.focus();
			return false;
		}
		$.ajax({
			type: "POST",
			url: "${ path }/member/nicknameCheck",
			dataType: "json",
			data: {
				memberNickname
			},
			success: (obj) => {
				console.log(obj);
				if(obj.duplicate === true) {
					Swal.fire({
						icon: 'error',
						title: '����!',
						text: '�̹� ������� �г��� �Դϴ�.',
					})
				} else {
					Swal.fire({
						icon: 'success',
						title: '����!',
						text: '��� ������ �г��� �Դϴ�.',
					})
				}
			},
			error: (error) => {
				console.log(error);
			}
		});
	};
	// �̸��� ����
	function emailCheck() {
		const email = $('#email').val() // �̸��� �ּҰ� ������
		console.log('�̸��� : ' + email); // �̸��� ������ Ȯ��
		const checkInput = $('#emailNumber') // ������ȣ �Է��ϴ°� 
		$.ajax({
			type: 'get',
			url: '<c:url value ="/member/emailCheck?email="/>' + email, // GET����̶� Url �ڿ� email�� �������ִ�.
			success: function(data) {
				console.log("data : " + data);
				checkInput.attr('disabled', false);
				code = data;
				Swal.fire('������ȣ�� ���۵Ǿ����ϴ�.')
			}
		}); // end ajax
	}; // end send eamil
	// ������ȣ �� 
	// blur -> focus�� ����� ��� �߻�
	$('#emailNumber').blur(function() {
		const inputCode = $(this).val();
		if(inputCode === code) {
			$('#emailCheck2').attr('disabled', true);
			$('#email').attr('readonly', true);
			Swal.fire({
				icon: 'success',
				title: '��ġ!',
				text: '������ȣ�� ��ġ�մϴ�!',
			})
		} else {
			Swal.fire({
				icon: 'error',
				title: '����ġ!',
				text: '������ȣ�� ����ġ �մϴ�. �ٽ� Ȯ�����ּ���!',
			})
		}
	});

	function onKuPwConfirm(e) {
		var password = $('#password').val()
		var password2 = $('#password2').val()
		
		if(password !== password2){
			var addHtml = '<span class="eqErrorMsg" '+
						  'style="color: red;font-size: 0.9rem;"> �Է��Ͻ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.</span>';
			
			$('.eqErrorMsgWrap').html(addHtml)
		}else {
			$('.eqErrorMsgWrap').html('')
		}
		console.log(password2)
	}
	// ��ȿ�� �˻�
	function updateFormSubmit() {
		// ������ �ֱ�
		var password = document.getElementById("password");
		var password2 = document.getElementById("password2");
		var nickname = document.getElementById("memberNickname");
		var email = document.getElementById("email");
		var female = document.getElementById("female");
		var male = document.getElementById("male");
		var age20 = document.getElementById("age20");
		var age30 = document.getElementById("age30");
		var age40 = document.getElementById("age40");
		var age50 = document.getElementById("age50");
		var privacy_check = document.getElementById("privacy_check");
		var termconditions_check = document.getElementById("termconditions_check");
		
		
		if(password == "") {
			Swal.fire('��й�ȣ�� �Է��ϼ���.')
			memberPassword.focus();
			return false;
		}
		// ��й�ȣ ����
		var passwordCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^&*+=-])(?=.*[0-9]).{8,25}$/;
		if(!passwordCheck.test(memberPassword.value)) {
			Swal.fire('��й�ȣ�� ������+����+Ư������ �������� 8�ڸ� �̻� �Է����ּ���.')
			memberPassword.focus();
			return false;
		}
		if(memberPassword2.value !== memberPassword.value) {
			Swal.fire('��й�ȣ�� ��ġ���� �ʽ��ϴ�.')
			memberPassword2.focus();
			return false;
		}
		if(memberNickname.value == "") {
			Swal.fire('�г����� �Է��ϼ���.')
			memberNickname.focus();
			return false;
		}
		// �̸��� ����
		var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		if(memberEmail.value == "") {
			Swal.fire('�̸����ּҸ� �Է��ϼ���.')
			memberEmail.focus();
			return false;
		}
		if(!emailCheck.test(memberEmail.value)) {
			Swal.fire('�̸��� ���Ŀ� �°� �Է����ּ���.')
			memberEmail.focus();
			return false;
		}
		if(memberEmailNumber.value !== code) {
			Swal.fire({
				icon: 'error',
				title: '����ġ!',
				text: '������ȣ�� ����ġ �մϴ�. �ٽ� Ȯ�����ּ���!',
			})
			memberEmailNumber.focus();
			return false;
		}
		if($("input[name=memberGender]:radio:checked").length < 1) {
			Swal.fire('������ ������ �ּ���.')
			female.focus();
			return false;
		}
		if($("input[name=memberAge]:radio:checked").length < 1) {
			Swal.fire('���ɴ븦 ������ �ּ���.')
			age20.focus();
			return false;
		}
		if(!privacy_check.checked) {
			Swal.fire('�������������� �������ּ���.')
			privacy_check.focus();
			return false;
		}
		if(!termconditions_check.checked) {
			Swal.fire('�̿����� �������ּ���.')
			termconditions_check.focus();
			return false;
		}
		//�Է� �� ����
		$('#updateForm').submit();
	}
	</script>