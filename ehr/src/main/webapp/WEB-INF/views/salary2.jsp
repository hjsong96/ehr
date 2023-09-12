<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Salary</title>
<link href="./resources/css/salary.css" rel="stylesheet" />
<link href="./resources/css/menu.css" rel="stylesheet" />
<script src="./js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<div class="total-content">
		<h1>관리자-급여목록</h1>
		<div class="top-area">
			<form action="">
				<ul>
					<li>조회기간<input type="month"> ~ <input type="month"></li>
					<li>소속<input></li>
					<li>직급 <select>
							<option value="0">사원</option>
							<option value="1">주임</option>
							<option value="2">대리</option>
							<option value="3">과장</option>
							<option value="4">부장</option>
							<option value="5">부사장</option>
							<option value="6">사장</option>
					</select>
					</li>
					<li>사번<input></li>
					<li>성명<input></li>
					<li>재직상태 <select>
							<option value="0">재직</option>
							<option value="1">퇴사</option>
					</select>
					</li>
				</ul>
				<button>조회</button>
			</form>
			<div class="middle-area">
				<div class="buttonText-area">
					<div class="textA">연봉관리</div>
					<div class="buttonA">
						<button>입력</button>
						<button>저장</button>
					</div>
					<div class="table-area">
						<table border="1">
							<tr>
								<td>No</td>
								<td>삭제</td>
								<td>사번</td>
								<td>성명</td>
								<td>부서</td>
								<td>직급</td>
								<td>재직상태</td>
								<td>기본급</td>
								<td>변동급</td>
								<td>월단위총액</td>
								<td>연봉총액</td>
								<td>시작일</td>
								<td>종료일</td>
							</tr>
							<c:forEach items="${list }" var="row">
								<tr>
								<td>${row.sno }</td>
								<td></td>
								<td>${row.eno }</td>
								<td>${row.ename }</td>
								<td>${row.edept }</td>
								<td>${row.egrade }</td>
								<td>${row.estate }</td>
								<td>${row.sbasesal }</td>
								<td>${row.seat }</td>
								<td>${row.ssalary }</td>
								<td>${row.sannualsal }</td>
								<td>${row.scstrdate }</td>
								<td>${row.scenddate }</td>
								</tr>
							</c:forEach>
						</table>
					</div>



				</div>
			</div>



		</div>




	</div>

</body>
</html>
