<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath(); //내부적으로 콘텍스트를 지정할 수 있는 경로
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시터 개인 정보 열람 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/ILookCSS.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
</script>


</head>
<body>

<div id="wrapper">
        <!--헤더 부분은 공용으로 모든 뷰페이지에 사용하고 메인부분만 변경하는 부분으로 생각했었어 각 뷰페이지에 헤더부분만 같아도 통일감을 가질 것 같아서-->
        <header>
            <div id="logo">
                <img src="./images/logo.png" height="120px">
            </div>
            <nav>
                <button type="button" class="menuBtn presentPage">홈</button>
                <button type="button" class="menuBtn">로그아웃</button>
                <button type="button" class="menuBtn">스케줄러</button>
                <button type="button" class="menuBtn">긴급돌봄서비스</button>
                <button type="button" class="menuBtn">마이페이지</button>
                <button type="button" class="menuBtn">알림함</button>
            </nav>
        </header>
	</div>

<main style="display: flex;">

<div class="side-bar-container" >
	<div class="side-bar">
		<ul class="side-menu">
			<li><a href="">시터 마이 페이지</a>
				<ul>
					<li><a href="">개인정보 수정</a></li>
					<li><a href="">등급 확인</a></li>
					<li><a href="">근무 등록</a></li>
					<li><a href="">근무 등록 관리</a></li>
					<li><a href="">근무 등록 내역 확인</a></li>
					<li><a href="">회원 탈퇴</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div>

<div class="info modify container" >
	<div class="info modify item">
		<form action="form-inline" method="get" onsubmit="">
		<h2>개인정보 수정하기</h2>
		<br />
		<div class="form-group" style="display: flex;">
		이름: <input type="text" class="form-control" style="width: 50%;"/>
		</div>
		<hr />
		아이디: <input type="text" readonly="readonly"/>
		<span class="errMsg">아이디는 변경할 수 없습니다.</span>
		<hr />
		비밀번호: <input type="text" />
		<span>비밀번호는 영어 대소문자, 숫자 조합으로 8자 이상 16자 이하로 입력해 주십시오.</span>
		<hr />
		주민등록번호: <input type="text" readonly="readonly"/>
		<hr />
		전화번호: <input type="text" />
		<button type="button">인증하기</button>
		<br /><br />
		
	
		<br /><br /><br />
		<br />
		<br />
		<br />
		<h2>주소 수정하기</h2>
		도로명 주소: <input type="text" />
		<hr />
		상세주소: <input type="text" />
		<hr />
		우편번호: <input type="text" />
		<br /><br />
		
		<button class="modifyBtn" type="submit">수정하기</button>	<button type="reset">취소</button>
		</form>
		</div>
	</div>
<br />
<br />
<br />
</main>




</body>
</html>