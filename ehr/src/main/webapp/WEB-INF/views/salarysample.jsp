<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salary</title>
<link href="./resources/css/salary.css" rel="stylesheet" />
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		// 조회 버튼 클릭 이벤트 핸들러
		$(".search").click(function() {
			let sdate = $(this).siblings().eq(1).val();
			let day = new Date(sdate).getDate();
			let d = $(this).siblings().eq(2).val();
			let day2 = d.substr(-2);
			//alert(sdate)

			// 선택한 날짜가 5일 날짜인지 확인
			if (day !== 5) {
				alert("날짜는 0000-00-05일로 선택해야 합니다.");
				return; // 경고 후 처리 중단
			}
			
			if (day2 !== '05') {
				alert("날짜는 0000-00-05일로 선택해야 합니다.");
				return; // 경고 후 처리 중단
			}

			// 선택한 날짜가 5일인 경우 AJAX 요청 등의 로직을 추가할 수 있음

			// AJAX 요청 등의 로직 추가
			$.ajax({
				url : "./searchSal",
				type : "post",
				data : {
					"eno" : eno
				},
				dataType : "json",
				success : function(data) {
					alert(data);
				},
				error : function(error) {
					alert("에러가 발생했습니다.");
				}
			});
		});
	});
	/*  	$(function() {
	 $(".search").click(function() {
	 let eno = $(this).siblings().eq(0).val();
	 let sdate = $(this).siblings().eq(1).val();
	 alert(eno)
	 alert(sdate)
	
	 $.ajax({
	 url: "./searchSal",
	 type: "post",
	 data: {"eno" : eno}, 
	 dataType: "json",
	 success: function(data){
	 alert(data)
	 },
	 error:function(error){
	 alert("에러가 발생했습니다.");}
	 });
	 });
	 });  */
</script>
</head>
<body>

	<h1>salary</h1>
	${elist }
	<hr>
	${slist}
	<hr>
	${elist.ename } ${elist.eid } ${elist.edept} ${elist.ebirth}
	${elist.estate} ${elist.ehiredate} ${elist.egrade}

	<hr>
	<form action="./salary?eno=${sessionScope.eno}&sdate=${param.sdate}"
		method="post">
		<input name="eno" class="eno" type="hidden"
			value="${sessionScope.eno}"> <input name="sdate" type="date"
			value="${param.sdate}">
		<button class="search">조회</button>
	</form>
	<br>

	<div class="middle">
		<table class="give" border="1">
			<tr>
				<th colspan="4">지급</th>
			</tr>
			<tr>
				<th colspan="2">항목</th>
				<th colspan="2">금액</th>
			</tr>
			<tr>
				<td colspan="2">기본급</td>
				<td colspan="2" class="ebasesal">${elist.ebasesal}</td>
			</tr>
			<tr>
				<td colspan="2">식대</td>
				<td colspan="2" class="eeat">${elist.eeat}</td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2">합계</td>
				<td>${elist.esalary}</td>
			</tr>
		</table>

		<table class="take" border="1">
			<tr>
				<th colspan="4">공제</th>
			</tr>
			<tr>
				<th colspan="2">항목</th>
				<th colspan="2">금액</th>
			</tr>
			<tr>
				<td colspan="2">국민연금</td>
				<td colspan="2">${slist.snation}</td>
			</tr>
			<tr>
				<td colspan="2">건강보험</td>
				<td colspan="2">${slist.shealth}</td>
			</tr>
			<tr>
				<td colspan="2">장기요양보험</td>
				<td colspan="2">${slist.scare}</td>
			</tr>
			<tr>
				<td colspan="2">고용보험</td>
				<td colspan="2">${slist.shire}</td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2">합계</td>
				<td>${slist.stake}</td>
			</tr>
		</table>

		<table class="total" border="1">
			<tr>
				<th colspan="4">세금내역</th>
			</tr>
			<tr>
				<td colspan="2">지급총액</td>
				<td colspan="2">${elist.esalary}</td>
			</tr>
			<tr>
				<td colspan="2">공제총액</td>
				<td colspan="2">${slist.stake}</td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2"></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="2">실지급액</td>
				<td colspan="2">${slist.sreal}</td>
			</tr>
		</table>
	</div>
</body>
</html>
