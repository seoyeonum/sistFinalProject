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
<title>등급 확인 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/ILookCSS.css">
<style type="text/css">

        @font-face {
            font-family: 'NoonnuBasicGothicRegular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noon-2410@1.0/NoonnuBasicGothicRegular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }
        
        #wrapper {
            display: flex;
            /* justify-content: center;
            align-items: center; */
            flex-direction: column;
            gap: 25px;
        }

        header {
            height: 150px;
            width: 100%;
            display: flex;
            gap: 40px;
            justify-content: center;
            align-items: center;
            -webkit-box-shadow: 0 10px 6px -6px #777;
            -moz-box-shadow: 0 10px 6px -6px #777;
            box-shadow: 0 10px 6px -6px #777;
        }

        #logo {
            position: relative;
            top: -17px;
            left: -90px;
            height: 50px;
            width: 200px;
        }

        nav {
            height: 45px;
            width: 800px;
            display: flex;
            vertical-align: middle;
            position: relative;
            top: 45px;
            left: 260px;
        }

        .menuBtn {
            height: 45px;
            font-size: 20px;
            background: transparent;
            border: none;
            outline: none;
            margin: 0 10px;
            font-family: 'NoonnuBasicGothicRegular';
        }

        .presentPage {
            color: rgb(226, 140, 153);
        }

        .menuBtn:hover {
            color: rgb(226, 140, 153);
        }

        #notice {
            display: flex;
            justify-content: space-around;
            align-items: center;
            height: 250px;
            width: 1200px;
            gap: 5px;
        }

        #notice_text {
            border: 2px solid gainsboro;
            height: 100%;
            width: 98%;
            border-radius: 20px;

        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            gap: 25px;
        }

        
        .side-bar
        {
        	border: 2px solid black;
        	margin: 0;
        	display: flex;
        	width: 18%;
        }
        
        .side-bar ul
        {
        	margin-bottom: 0;
        	width: 90%;
        }
        
        .side-bar ul > li > a 
        {
		  display: block;
		  color: black;
		  font-size: 1.4rem;
		  font-weight: bold;
		  /*
		  padding-top: 20px;
		  padding-bottom: 20px;
		  padding-left: 50px;
		  padding-right: 10px;
		  */ 
		  font-family: 'NoonnuBasicGothicRegular';
		}
        
        .side-menu ul, li
        {
        	list-style: none;
        	padding-right: 0;
        }
        
        .side-menu a:hover
        {
        	background-color: #FFB6C1;
        }
        
        .side-menu a
        {
        	text-decoration: none;
        }
        
        /* 메인 콘텐츠 */
        .content
        {
        }
        
        .grades .main
        {
        	
        }
        
        .sitter .image
        {
        	border: 2px solid black;
        	border-radius: 100px;
            height: 25%;
            width: 25%;
        }
        
        .sitters .info
        {
        	border: 2px solid black;
        	border-radius: 20px;
            height: 25%;
            width: 25%;
        }
        
        .sitters .sub
        {
        	border: 2px solid black;
        	border-radius: 20px;
        }
        
        .rankup .info
        {
        	border: 2px solid black;
        	border-radius: 20px;
        }
        
        .grades .info
        {
        	border: 2px solid black;
        	border-radius: 20px;
        }
        
        .
</style>
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
	<main>
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
		
		<div class="grades" style="">
			<div class="row grades main " style="border: 2px solid gray; border-radius: 20px; ">
				<div class="col-md-1"></div>
				<div class="sitter image col-md-2" > <img src= "./images/logoimg.png" alt="" height="100"/>
				<br />
				사진이 들어가는 곳입니다.</div>
				<div class="grades rank col-md-2"> <img src="./images/logoimg.png" alt="" height="100" />
				<br />
				OOO님의 등급은 브론즈입니다.</div>
				<div class="sitters info col-md-2">
					가입일:
					<br />
					그동안 맡은 돌봄 서비스 수:
					<br />
					전체 평균 점수:
					<br />
					최근 3개월간 평균 점수:
				</div>
			</div> <!-- .grades main -->
			
			<br /><br />
			
			<div class="row grades sub">
				<div class="rankup info col-md-3" >
				총 근무 시간:
				<br />
				현재 근무 시간:
				<br />
				다음 등급까지 XXX 시간 남았습니다. 
				</div>
				
				<div class="col-md-1"></div>
				
				<div class="grades info col-md-4">
				○ 등급에 따른 시급 조건<br /><br />
				
				- 일반 돌봄 시터: 10000원<br />
				- 긴급 돌봄 시터: 15000원<br /><br />
				
				1. 신입: 시급 * 1.0배<br />
				2. 브론즈: 시급 * 1.0배<br />
				3. 실버: 시급 * 1.2배<br />
				4. 골드: 시급 * 1.5배<br />
				5. 플래티넘: 시급 * 1.7배<br /><br />
				
				일정 누적 근무 시간 달성 시 등급을 올릴 수 있습니다.<br /><br />
				</div>
				
				<div class="grades info col-md-4">
				1. 신입<br />
				- 신입은 누적 근무 시간 120시간 미만<br />
				- 하루 근무 시간은 최대 2시간으로 제한<br />
				2. 브론즈<br />
				- 브론즈1 : 120시간 이상 1,000시간 미만 근무<br />
				- 하루 근무 시간은 최대 8시간으로 제한<br />
				3. 실버<br />
				- 실버 : 1,000시간 이상 5000시간 미만 근무<br />
				- 하루 근무 시간은 최대 8시간으로 제한<br />
				4. 골드<br />
				- 골드 : 5,000시간 이상 10,000시간 미만 근무<br />
				- 하루 근무 시간은 최대 8시간으로 제한<br />
				5. 플래티넘<br />
				- 10,000 시간 이상 근무<br />
				- 하루 근무 시간은 최대 8시간으로 제한<br />
				</div>
			</div> <!-- .grades sub -->
			
			
		</div> <!-- .grades -->
	</main>
</div>
</html>