<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<jsp:include page="../common/header.jsp"/>

<body>
	<!-- ȸ�� Ż�� -->
	<!-- ��ü �����̳� -->
	<div class="p-5 container">
		<div class="h-dropout pt-5 pb-1">
			<h3 style="color: #808080;">Ż�� �ȳ�</h3>
		</div>
	<div class="top-container mt-1 mb-5">
		<div class="dropout">
			<p><b>ȸ�� Ż���Ϸκ��� ������ �г����� ������ ���� ����(���̵�/�̸���/�г���)�� '���� ���� ��ȣ ��å'�� ���� 60�ϰ� ����(���) �Ǹ�, 
			   60���� ����� �Ŀ��� ��� ���� ������ ������ �����Ǹ� �� �̻� ������ �� ���� �˴ϴ�.</b></p>
            <b>Ż�� �Ŀ��� �Խ����� ���񽺿� ����� �Խù��� �״�� ���� �ֽ��ϴ�.</b>
            <p>�÷���, �����, ������ � �ø� �Խñ� �� ����� Ż�� �� �ڵ� �������� �ʰ� �״�� ���� �ֽ��ϴ�.
               ������ ���ϴ� �Խñ��� �ִٸ� �ݵ�� Ż�� �� ����� ó���ϰų� �����Ͻñ� �ٶ��ϴ�.
               Ż�� �Ŀ��� ȸ�������� �����Ǿ� ���� ���θ� Ȯ���� �� �ִ� ����� ����, �Խñ��� ���Ƿ� �����ص帱 �� �����ϴ�.</p>
		</div>
	</div>
	<div class="h-dropout">
		<h3 style="color: #808080;">Ż�� ����</h3>
	</div>
	<div class="p-2 top-container">
		<form class="reason-dropout top-container" style="padding-bottom: 34px">
			<div class="dropout reason-dropout">
				<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1"
                  		value="option1">
                	<label class="form-check-label" for="inlineRadio1">����Ʈ �̿� ����</label>
              	</div>
              	<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2"
                  		value="option2">
                	<label class="form-check-label" for="inlineRadio2">�̿�� ����</label>
              	</div>
              	<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3"
                  		value="option3">
                	<label class="form-check-label" for="inlineRadio2">�������� ���� ���</label>
              	</div>
              	<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4"
                  		value="option4">
                	<label class="form-check-label" for="inlineRadio2">���̵� ���� / �簡�� ����</label>
              	</div>
              	<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5"
                  		value="option5">
                	<label class="form-check-label" for="inlineRadio2">������ �� �̿��� ���� ���� ����</label>
              	</div>
              	<div class="form-check form-check-inline" id="dropoutOption">
                	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio6"
                  		value="option6">
                	<label class="form-check-label" for="inlineRadio2">�̿�� ����</label>
              	</div>
            </div>
            <div class="memberOutBtn pt-3">
              <button id="dropout" class="btn btn-secondary">Ż��</button>
              <button class="btn btn-warning">���</button>
            </div>
		</form>
	</div>
</div>
	
<jsp:include page="../common/footer.jsp"/>

<!-- sweetalert2 alert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
	$(function () {
		console.log("test");
		$("#dropout").click(function () {
			Swal.fire({
				title: 'Are you sure?',
				text: "You won't be able to revert this!",
				icon: 'warning',
				showCancelButton: true,
				confirmButtonColor: '#3085d6',
				cancelButtonColor: '#d33',
				confirmButtonText: 'Yes, delete it!'
			}).then((result) => {
				if (result.isConfirmed) {
					Swal.fire(
				      'Deleted!',
				      'Your file has been deleted.',
				      'success'
				    )
				  }
				})	
		})
	});
</script>









