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
/* 		$(".btn-close").click(function(){
            $(".detail-head2").remove(); // 기존의 내용을 비워줍니다.
		}) */
		
		 $(".xi-file-text-o").click(function(){
	        let cno = $(this).parents("tr").find(".cno").text();
	        let eno = $(".eno").val();
	        let cstrdate = $(this).parents("tr").find(".cstrdate").text();
	        let cenddate = $(this).parents("tr").find(".cenddate").text();
			//alert(cno);
			//alert(eno);
			//alert(cstrdate);
			//alert(cenddate);
			
			   $.ajax({
					url: "./modal",
					type: "post",
					data: {"cno" : cno, "eno" : eno, "cstrdate" : cstrdate}, 
					dataType: "json",
					success:function(data){
						let acno = data.clist2.cno;
						let acstrdate = data.clist2.cstrdate;
						let acenddate = data.clist2.cenddate;
						function formatNumber(number) {
                    	return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
                		}
						$(".name").text(data.elist.ename);
						$(".eannualsal").text(formatNumber(data.elist.eannualsal) + '원');
						$(".ebasesal").text(formatNumber(data.elist.eannualsal) + '원');
						$(".eeat").text(formatNumber(data.elist.eeat) + '원');
						$(".esalary").text(formatNumber(data.elist.esalary) + '원');
						$(".cstrdate2").text(cstrdate);
						$(".cenddate2").text(cenddate);
						
		                let form = $("<form></form>");
						form.attr("action", "./contrack");
						form.attr("method", "post");
						
						let input = $("<input>");
						input.attr("name", "acno");
						input.attr("class","acno");
						input.val(acno);

						let input2 = $("<input>");
						input2.attr("name", "acstrdate");
						input2.attr("class","acstrdate");
						input2.val(acstrdate);
						
						let input3 = $("<input>");
						input3.attr("name", "acenddate");
						input3.attr("class","acenddate");
						input3.val(acenddate);
						
						$("#cno").append(input);
						$("#cstrdate").append(input2);
						$("#cenddate").append(input3);

						let button = $("<button></button>");
						button.text("제출하기");
						button.attr("type", "submit");
						button.attr("class", "submit");
						$("#submit").append(button);
						$(".detail-head2").append(form);
		                $("#exampleModal").modal("show");
		                
		                $(".btn-close").click(function() {
		                    $("#cno input, #cstrdate input, #cenddate input, #submit button").remove();
		                });
					}, //success 끝
					error:function(error){
						alert("에러가 발생했습니다.");} //error 끝
				}); //ajax 끝
		}); //.xi-file-text-o 클릭 끝
	}); //function 끝
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
					<td class="cno">${row.cno }</td>
					<td><i class="xi-file-text-o modalOpen" style="cursor: pointer;"></i></td>
					<td class="cstrdate">${row.cstrdate }</td>
					<td class="cenddate">${row.cenddate }</td>
					<td>${row.cagree }</td>
					<td>${row.cagreedate }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
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
						</div>
						<div class="detail-name">연봉계약서</div>
							<div class="detail-content">
							(주)000(이하 '갑'이라 함)와 <span class="name"></span> 은/는 체결된 근로계약서의 부속계약서로서<br>
							다음과 같이 연봉계약을 체결하고 이를 성실히 이행할 것을 약정한다. 
							</div>
							<div class="detail-content">
							<div class="detail-head">제 1조. 적용기간:</div>
								① <span class="cstrdate2"></span> 부터 <span class="cenddate2"></span> 까지로 한다.<br>
								② 제 1항의 적용 기간 이후 총연봉 금액 및 구성항목의 조정은 매년 "갑" 의 <br>
				<!-- &nbsp -->	   취업규칙 또는 "갑"이 정한 조정 기준 및 절차에 따르기로 한다.<br> 
				   				   단, 총연봉의 저하가 발생하는 경우에는 "갑"과 "을"이 별도로 합의하여 정한다.
				   			</div>
							<div class="detail-head">제 2조. 총연봉 구성항목:</div>
								<div class="detail-content">
								<table class="salary" border="1">
								<tr>
								<td colspan="4">월 구성내역</td>
								<td colspan="2">총연봉<br>(월합계x12기준)</td>
								</tr>
								<tr>
								<td>기본급</td>
								<td>식대</td>
								<td>기타수당</td>
								<td>월합계</td>
								<td class="eannualsal" rowspan="2"></td>
								</tr>
								<tr>
								<td class="ebasesal"></td>
								<td class="eeat"></td>
								<td class="ebonus"></td>
								<td class="esalary"></td>
								</tr>
								</table>
								</div>
						<div class="detail-head2">제 3조. 동의여부</div>
						<input type="radio" value="1" name="agree" checked>동의
						<input type="radio" value="0" name="agree">비동의
						<div class="detail-head2">
						<div id="cno"></div>
						<div id="cstrdate"></div>
						<div id="cenddate"></div>
						<div id="submit"></div>
						</div>
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
