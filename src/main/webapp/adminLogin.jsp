<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function loginCheck() {
		if (document.login.adminId.value.length==0 && document.login.adminPw.length==0){
			// console.log(document.login.adminId.value);
			alert("아이디, 비밀번호는 필수 입력 사항입니다.");
			document.login.adminId.focus(); // 해당 폼으로 커서이동
			return false;
		}
	}
</script>
</head>
<body>
	<h2>관리자 로그인</h2>
	<form action="adminLoginOk" name=login method="post" onsubmit="return loginCheck()">   <%-- method="post" : 개인정보 서버에 넘길때는 보통 post 써준다  --%>
		아이디 : <input type="text" name=adminId><br><br>
		비밀번호 : <input type="password" name=adminPw><br><br>
		<input type=submit value="입력">
		 
	</form>

</body> 
</html>