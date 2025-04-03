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
<title>시터의 일반 돌봄 서비스 예약 내역</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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
            flex-direction: column;
            gap: 25px;
        }

        #fillter {
            height: 400px;
            width: 1170px;
            display: flex;
            justify-content: center;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
        }

        #select_box {
            border: 2px solid gainsboro;
            height: 100px;
            width: 1100px;
            border-radius: 20px;
            margin-top: 40px;
        }
        
        
        .side-bar
        {
        	border: 2px solid black;
        	width: 330px;
        	margin-left: 0;
        }
        
        .side-bar ul
        {
        	margin-bottom: 0;
        }
        
        .side-bar ul > li > a 
        {
		  display: block;
		  color: black;
		  font-size: 1.4rem;
		  font-weight: bold;
		  padding-top: 20px;
		  padding-bottom: 20px;
		  padding-left: 50px;
		  padding-right: 10px; 
		  font-family: 'NoonnuBasicGothicRegular';
		}
        
        .side-menu ul, li
        {
        	list-style: none;
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
            margin-left: 400px;
            padding: 20px;
        }
        
        /* 정보 테이블 */
        .info-table
        {
        	border: 2px solid black;
        	width: 100%;
        }
        
        .info-table th
        {
        	background-color: #f0f0f0;
        	text-align: center;
        }
        
        .info-table td
        {
        	text-align: center;
        }
        
        /* 예약 테이블 */
        .reservation-table 
        {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        
        .reservation-table-header 
        {
            background-color: #f0f0f0;
            text-align: center;
            padding: 10px;
            font-weight: bold;
            font-size: 14px;
        }
        
        .reservation-table-body tr:hover
        {
        	background-color: #FFB6C1;
        	border: 1px solid pink;
        }
        
        .reservation-table th, .reservation-table td
        {
            border: 1px solid #e0e0e0;
            padding: 10px;
            text-align: center;
        }

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	function moveAlarm()
	{
		window.location.href = "http://localhost:3306/Testproject/Alarm.html";
	}
	
	$().ready(function() 
	{
		// test
		//alert("asdf");
		
		$(".confirm-btn").css("display", "none");
		
		$(".reservation-btn").click(function() 
		{
			//test
			//alert("number1");
			
			//alert(this.value);
			var str = "";
			
			if (this.value == 1) 
			{
				//alert("asdf");
				str += "<tr>"
					+ "<td>고현석</td>"
					+ "<td>03.25 ~ 03.30</td>"
					+ "<td>동작구 어쩌고로 xx길 xxx OOO아파트 104동 304호</td>"
					+ "<td>여아</td>"
					+ "<td>4세</td>"
					+ "<td>무</td>"
					+ "<td>무</td>"
					+ "<td>유 - 계란 알레르기</td>"
					+ "<td>밥은 잘 먹으니 걱정하지 마세요. 지나치게 활동적이라 많이 놀아달라고 할 거예요. 장난감으로 잘 놀아주시면 감사하겠습니다. RC카 대결해주시면 좋아해요.</td>"
					+ "</tr>";
				
				$(".reservation-tbody").html(str);
				$(".confirm-btn").css("display", "inline");
			}
			else if (this.value == 2) 
			{
				//alert("aaaaaaa");
				$(".confirm-btn").css("display", "none");
				
				str += "<tr>"
					+ "<td>고현석</td>"
					+ "<td>03.25 ~ 03.30</td>"
					+ "<td>동작구 어쩌고로 xx길 xxx OOO아파트 104동 304호</td>"
					+ "<td>여아</td>"
					+ "<td>4세</td>"
					+ "<td>무</td>"
					+ "<td>무</td>"
					+ "<td>유 - 계란 알레르기</td>"
					+ "<td>밥은 잘 먹으니 걱정하지 마세요. 지나치게 활동적이라 많이 놀아달라고 할 거예요. 장난감으로 잘 놀아주시면 감사하겠습니다. RC카 대결해주시면 좋아해요.</td>"
					+ "</tr>";
				
				$(".reservation-tbody").html(str);
				
			} 
			else if (this.value == 3)
			{
				//alert("fffffffffffff");
				$(".confirm-btn").css("display", "none");
				
				str += "<tr>"
					+ "<td>방충식</td>"
					+ "<td>04.06 ~ 04.07</td>"
					+ "<td>동작구 어쩌고로 xx길 xxx AAA빌라 KKK호</td>"
					+ "<td>남아</td>"
					+ "<td>1세</td>"
					+ "<td>무</td>"
					+ "<td>무</td>"
					+ "<td>무</td>"
					+ "<td><td>"
					+ "</tr>";
					
				$(".reservation-tbody").html(str);
			}
		});
		
	});
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
			<button type="button" class="menuBtn presentPage" onclick="">홈</button>
			<button type="button" class="menuBtn"
				onclick="window.location.href='./project/projectLogin.html'">로그아웃</button>
			<button type="button" class="menuBtn">스케줄러</button>
			<button type="button" class="menuBtn">일반돌봄서비스</button>
			<button type="button" class="menuBtn">마이페이지</button>
			<button type="button" class="menuBtn" onclick="moveAlarm()">알림함</button>
		</nav>
	</header>
	<main>
		<div class="side-bar" role="navigation">
			<ul class="side-menu">
				<li><a
					href="javascript:location.herf='http://localhost:3306/Testproject/NewFile.html'">
					시터 마이 페이지</a>
					<ul>
						<li><a href="">개인정보 수정</a></li>
						<li><a href="">등급 확인</a></li>
						<li><a href="">근무 등록</a></li>
						<li><a href="">근무 등록 내역 확인</a></li>
						<li><a href="">돌봄 제공 내역 확인</a></li>
						<li><a href="">돌봄 완료 내역 확인</a></li>
						<li><a href="">회원 탈퇴</a></li>
					</ul>
				</li>
			</ul>
		</div>
		
		<div class="content">
		
			<div id="reservation-info">
				<table class="info-table">
					<thead>
						<tr>
							<th>부모 이름</th>
							<th>돌봄 일시</th>
							<th>지역</th>
							<th>아이 성별</th>
							<th>아이 연령</th>
							<th>장애 유무</th>
							<th>지병 유무</th>
							<th>알레르기 유무</th>
							<th>전달 메시지</th>
						</tr>
					</thead>
					<tbody class="reservation-tbody">
						<tr>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
							<td>.</td>
						</tr>
					</tbody>
				</table>
				
				<button class="confirm-btn">예약확정</button>
				<button class="confirm-btn">예약취소</button>
			</div>

		<table class="reservation-table">
			<thead class="reservation-table-header">
				<tr>
					<th>번호</th>
					<th>예약 신청 날짜</th>
					<th>예약 이용 시간</th>
					<th>지역</th>
					<th>아이 성별</th>
					<th>아이 연령</th>
					<th>예약 상태</th>
					<th>상세 정보</th>
				</tr>
			</thead>
			<tbody class="reservation-table-body">
				<tr id="number1">
					<td>1</td>
					<td>2025.03.30</td>
					<td>04.06 ~ 04.07</td>
					<td>강남구</td>
					<td>남아</td>
					<td>3세</td>
					<td>예약 신청</td>
					<td><button class="reservation-btn" value="1">상세 정보</button></td>
				</tr>
				<tr id="number2">
					<td>2</td>
					<td>2025.03.28</td>
					<td>04.01 ~ 04.05</td>
					<td>동작구</td>
					<td>여아</td>
					<td>4세</td>
					<td>예약 확정</td>
					<td><button class="reservation-btn" value="2">상세 정보</button></td>
				</tr>
				<tr>
					<td>2</td>
					<td>2024.03.20</td>
					<td>03.25 ~ 03.30</td>
					<td>동작구</td>
					<td>남아</td>
					<td>1세</td>
					<td>예약 취소</td>
					<td><button class="reservation-btn" value="3">상세 정보</button></td>
				</tr>
			</tbody>
		</table><!-- .reservation-table -->
		</div><!-- .content -->
	</main>
</div>

</body>
</html>