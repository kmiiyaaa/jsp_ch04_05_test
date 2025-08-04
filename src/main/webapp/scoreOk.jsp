<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8"); // 인코딩 설정
	
	String kor1 = request.getParameter("kor");  // 국어점수 추출,  getparameter는 문자열, string으로 받아야됨
	String eng1 = request.getParameter("eng");
	String math1 = request.getParameter("math");
	
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));  
	int math = Integer.parseInt(request.getParameter("math"));

	double avg = (kor+eng+math)/3.0 ;

%>

입력된 국어 점수 : <%= kor %> <br><br>
입력된 영어 점수 : <%= eng %> <br><br>
입력된 수학 점수 : <%= math %> <br><br>
<hr>
총점 : <%= kor + eng + math %> 점 <br><br>
평균 : <%= avg  %> 점

</body>
</html>