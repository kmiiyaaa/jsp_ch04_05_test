<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 입력</title>
<script type="text/javascript">
	function scoreCheck() {
	 if	(document.score.kor.value.length ==0 ||document.score.eng.value.length ==0 || documents.score.math.value.length==0){
		 alert("점수는 필수 입력사항입니다!!");
	 return false;   // onsubmit="return scoreCheck()" 입력한 경우
		// return; 
	 }
	//  document.scroe.submit();
	}

</script>
</head>
<body>
	<h2> 점수 입력</h2>
	<hr>
	<form action="scoreOk.jsp" name = score onsubmit="return scoreCheck()" >
		국어 : <input type="text" name="kor"><br><br>
		영어 : <input type="text" name="eng"><br><br>
		수학 : <input type="text" name="math"><br><br>	
		<input type="submit" value="점수입력">  <%--  onclick="scoreCheck()"--%>
	</form>  <%-- request 객체 안에 넣어서 한번에 서버로 넘긴다 -> 서버는 socreOk.jsp에게 넘겨줌 --%>


</body>
</html>