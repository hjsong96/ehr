<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" ></script>
<script type="text/javascript">

$(function(){
	$("#eidCheck").click(function(){
		let eid = $("#eid").val();
		
		$.ajax({
			url:"./eidcheck",
			type:"post",
			data:{"eid":eid},
			dataType:"json",
			success:function(data){
				if(data.result==1){
					alert("중복된 사번");
				}else{
					alert("사용할 수 있는 사번");
				}
			},
			error:function(request, status, error){
				$("eidCheck").text("오류가 발생함")
			}
		});
	});
	

	$("#eemailCheck").click(function() {
			let eemail = $("#eemail").val();
			$.ajax({
				url : "./eemailcheck",
				type : "post",
				data : {
					"eemail" : eemail
				},
				dataType : "json",
				success : function(data) {
					if (data.result == 1) {
						alert("중복된 이메일");
					} else {
						alert("사용할 수 있는 이메일");
					}
				},
				error : function(request, status, error) {
					$("eidCheck").text("오류가 발생함")
				}
			});
		});
	})
</script>
</head>
<body>
<h1>관리자 - 회원등록페이지</h1>
<form action="./join" method="post" enctype="multipart/form-data">
사진<input type="file" name="eimg"><br>
사원번호<input type="text" name="eid" id="eid" placeholder="사원번호">
<button type="button" id="eidCheck">중복체크</button><br>
비밀번호<input type="password" name="epw" placeholder="비밀번호"><br>
이름<input type="text" name="ename" placeholder="이름"><br>
주민등록번호<input type="text" name="errn" placeholder="주민등록번호">-<input type="password" name="errn2" placeholder="주민등록번호"><br>
이메일<input type="text" name="eemail" id="eemail" placeholder="이메일" value="@ehr.com">
<button type="button" id="eemailCheck">중복체크</button><br>
자격증<input type="text" name="ecertificate" placeholder="자격증"><br>
부서<select name="edept">
	<option value="경영관리실">경영관리실</option>
	<option value="솔루션개발팀">솔루션개발팀</option>
	<option value="ICT사업팀">ICT사업팀</option>
	<option value="헬스케어개발팀">헬스케어개발팀</option>
	<option value="디자인UI-UX팀">디자인UI-UX팀</option>
	<option value="마케팅팀">마케팅팀</option>
</select><br>
직급<select name="egrade">
	<option value="0">사원</option>
	<option value="1">주임</option>
	<option value="2">대리</option>
	<option value="3">과장</option>
	<option value="4">차장</option>
	<option value="5">부장</option>
	<option value="6">부사장</option>
	<option value="7">사장</option>
	<option value="8">관리자</option>
</select><br>
입사일<input type="date" name="ehiredate" placeholder="입사일" ><br>
주소<input type="text" name="eaddr" placeholder="주소"><br>
생일<input type="date" name="ebirth" placeholder="생일"><br>
성별<select name="egender">
	<option value="man">남자</option>
	<option value="woman">여자</option>
</select><br>
핸드폰번호<input type="text" name="ephoneno" placeholder="핸드폰번호"><br>
은행이름<select name="ebank">
	<option value="국민은행">국민은행</option>
	<option value="신한은행">신한은행</option>
	<option value="신한은행">농협</option>
	<option value="카카오뱅크">카카오뱅크</option>
	<option value="토스뱅크">토스뱅크</option>
</select><br>
계좌번호<input type="text" name="eaccount" placeholder="계좌번호"><br>
<button type="submit">회원등록</button>
</form>

</body>
</html>