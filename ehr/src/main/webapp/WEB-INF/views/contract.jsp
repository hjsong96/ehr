<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salary</title>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link href="./resources/css/salary.css" rel="stylesheet" />
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	function printPage() {
		window.print();
	}
</script>
</head>
<body>
	<h1>salary</h1>
	<form action="./salary" method="get">
		<input name="eno" class="eno" value="${sessionScope.eno}">
	</form>
	<button class="print" onclick="printPage()">출력</button>
	<br>

	<div class="middle">
		<table border="1">
			<tr>
				<th>No</th>
				<th>세부내역</th>
				<th>시작일자</th>
				<th>종료일자</th>
				<th>동의</th>
				<th>동의일자</th>
			</tr>
			<c:forEach items="${clist }" var="row">
				<tr> 
					<td>${row.cno }</td>
					<td><i class="xi-file-text-o" ></i></td>
					<td>${row.cstrdate }</td>
					<td>${row.cenddate }</td>
					<td>${row.cagree }</td>
					<td>${row.cagreedate }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content"> <!-- 헤더 바디 푸터 묶어주는 div -->
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"></h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="datail-detail">
						<div class="detail-name">이름</div>
						<div class="detail-date-read">
							<div class="detail-date">날짜</div>
							<div class="detail-read">읽음</div>
						</div>
						<div class="detail-content">본문내용</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
