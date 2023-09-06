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
<link href="./css/style.css" rel="stylesheet" />
<script src="./js/jquery-3.7.0.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Bagel+Fat+One&display=swap"
   rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding:wght@700&display=swap"
   rel="stylesheet">
<script type="text/javascript">
	function printPage() {
		window.print();
	}

	$(function(){
		$(".xi-file-text-o").click(function(){
			let cno = $(this).parents().html();
			alert(cno);
		});
		
		$(".modalOpen").click(function(){
			$("#exampleModal").modal("show");			
		});
	});
</script>
</head>
<body>
	<h1>salary</h1>
	<form action="./salary" method="get">
		<input name="eno" class="eno" value="${sessionScope.eno}">
	</form>
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
					<td><i class="xi-file-text-o modalOpen" style="cursor: pointer;"></i></td>
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
					<h5 class="modal-title" id="exampleModalLabel">연봉계약서 세부내역</h5>
						<button class="print" onclick="printPage()">출력</button>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div class="datail-detail">
						<div>
						<h6>세부내역</h6>
						</div>
						<div class="detail-name">이름</div>
						<div class="detail-date-read">
							<div class="detail-date">날짜</div>
							<div class="detail-read">반가워어어어어어어</div>
						</div>
						<div class="detail-content">본문내용</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal -->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="js/scripts.js"></script>
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	
	
</body>
</html>
