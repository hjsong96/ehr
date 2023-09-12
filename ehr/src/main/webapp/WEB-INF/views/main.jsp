<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인페이지</h1>
${sessionScope.eid }
${sessionScope.ename }
${list}
<button onclick="location.href='./join'">사원등록</button>
<button onclick="location.href='./salary?eno=${sessionScope.eno}'">개인월급여내역</button>
<button onclick="location.href='./contract?eno=${sessionScope.eno}'">연봉계약서</button>
<button onclick="location.href='./salary2?eno=${sessionScope.eno}'">관리자-급여목록</button>
<button onclick="location.href='./contract2?eno=${sessionScope.eno}'">관리자-연봉동의목록</button>

</body>
</html>