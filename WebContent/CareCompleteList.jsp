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
<title>시터의 돌봄 완료 페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/ILookCSS.css">
<style type="text/css">

	div
	{
		font-family: 'NoonnuBasicGothicRegular';
	}
	
	/* 사이드 바 */
	.side-bar-container
	{
		align-content: center;
		margin-bottom: 10%;
		margin-top: 10%; 
		
	}
	
	.side-bar
	{
		margin-left: -40px;
	}
	
	.side-menu
	{
		padding-left: 0px;
		width: 300px;
	}
	
	/* 버튼 */
	.confirm-btn, .confirm-btn, .reservation-btn
	{
		font-size: 16pt;
       	background-color: #f4cccc; 
       	border: 2px solid #ea9999;
       	border-radius: 10px;
	}
	
	.confirm-btn:hover, .confirm-btn:hover, .reservation-btn:hover
	{
		background-color: #ea9999;
       	border: 2px solid #f4cccc;
	}
	
	.confirm-btn:active, .confirm-btn:active, .reservation-btn:active
	{
		color: #ea9999;
       	background-color: #f4cccc; 
       	border: 2px solid #ea9999;
	}
	
	/* 테이블 */
	.content-container, .reservation-table
	{
		text-align: center;
	}
	
	.content-container
	{
		font-size: 14pt;
	}
	
	.reservation
	{
		border-radius: 10px;
	}
	
	.reservation-btn
	{
		font-size: 10pt;
	}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">

	$().ready(function() 
	{
		// test
		//alert("asdf");
		
		$(".reservation-btn").click(function() 
		{
			//test
			//alert("number1");
			
			var str = "";
			
			if (this.value == 1) 
			{
				str += "<div class='row'>"
					+ "<div class='col-md-1'>고현석</div>"
					+ "<div class='col-md-2'>03.25 ~ 03.30</div>"
					+ "<div class='col-md-2'>동작구 어쩌고로 xx길 xxx OOO아파트 104동 304호</div>"
					+ "<div class='col-md-1'>여아</div>"
					+ "<div class='col-md-1'>4세</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>유 - 계란 알레르기</div>"
					+ "<div class='col-md-2'>밥은 잘 먹으니 걱정하지 마세요. 지나치게 활동적이라 많이 놀아달라고 할 거예요. 장난감으로 잘 놀아주시면 감사하겠습니다. RC카 대결해주시면 좋아해요.</div>"
					+ "</div>";
				
				$(".info .tbody").html(str);
			}
			else if (this.value == 2) 
			{
				
				str += "<div class='row'>"
					+ "<div class='col-md-1'>고현석</div>"
					+ "<div class='col-md-2'>03.25 ~ 03.30</div>"
					+ "<div class='col-md-2'>동작구 어쩌고로 xx길 xxx OOO아파트 104동 304호</div>"
					+ "<div class='col-md-1'>여아</div>"
					+ "<div class='col-md-1'>4세</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>유 - 계란 알레르기</div>"
					+ "<div class='col-md-2'>밥은 잘 먹으니 걱정하지 마세요. 지나치게 활동적이라 많이 놀아달라고 할 거예요. 장난감으로 잘 놀아주시면 감사하겠습니다. RC카 대결해주시면 좋아해요.</div>"
					+ "</div>";
				
				$(".info .tbody").html(str);
				
			} 
			else if (this.value == 3)
			{
				str += "<div class='row'>"
					+ "<div class='col-md-1'>방충식</div>"
					+ "<div class='col-md-2'>04.06 ~ 04.07</div>"
					+ "<div class='col-md-2'>동작구 어쩌고로 xx길 xxx AAA빌라 KKK호</div>"
					+ "<div class='col-md-1'>남아</div>"
					+ "<div class='col-md-1'>1세</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-1'>무</div>"
					+ "<div class='col-md-2'> . <div>"
					+ "</div>";
					
				$(".info .tbody").html(str);
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
                <img src="<%=cp %>/images/logo.png" height="120px">
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

<main>
<div class="main container" style="display: flex;">
	<div class="side-bar-container" >
		<div class="side-bar" >
			<ul class="side-menu" >
				<li><a href="">시터 마이 페이지</a>
					<ul>
						<li><a href="">개인정보 수정</a></li>
						<li><a href="">등급 확인</a></li>
						<li><a href="">근무 등록</a></li>
						<li><a href="">근무 등록 내역 확인</a></li>
						<li><a href="">돌봄 제공 내역 확인</a></li>
						<li><a href="" style="font-weight: bold; color: #1AB223">돌봄 완료 내역 확인</a></li>
						<li><a href="">회원 탈퇴</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div> <!-- .side-bar-container -->
	
	<div class="content-container" >
		<div id="reservation info" style="margin-top: 100px; margin-bottom:10px; margin-left: -30px; margin-right: auto; ">
			<div class="info table" style="border: 1px solid #ea9999; border-radius: 10px;">
				<div class="info thead" style="background-color: #f4cccc;">
					<div class="row">
						<div class="col-md-1">부모 이름</div>
						<div class="col-md-2">돌봄 일시</div>
						<div class="col-md-2">지역</div>
						<div class="col-md-1">아이 성별</div>
						<div class="col-md-1">아이 연령</div>
						<div class="col-md-1">장애 유무</div>
						<div class="col-md-1">지병 유무</div>
						<div class="col-md-1">알레르기 유무</div>
						<div class="col-md-2">전달 메시지</div>
					</div>
				</div>
				<div class="info tbody">
					<div class="row">
						<div class="col-md-1">.</div>
						<div class="col-md-2">.</div>
						<div class="col-md-2">.</div>
						<div class="col-md-1">.</div>
						<div class="col-md-1">.</div>
						<div class="col-md-1">.</div>
						<div class="col-md-1">.</div>
						<div class="col-md-1">.</div>
						<div class="col-md-2">.</div>
					</div>
				</div>
			</div>
		</div>
	
		
		<div class="reservation table" style="border: 1px solid #ea9999; margin-left: -10px;">
			<div class="reservation thead" style="background-color: #f4cccc; width: 100%;">
				<div class="row">
					<div class="col-md-1">번호</div>
					<div class="col-md-2">예약 신청 날짜</div>
					<div class="col-md-2">예약 이용 시간</div>
					<div class="col-md-1">지역</div>
					<div class="col-md-2">아이 성별</div>
					<div class="col-md-2">아이 연령</div>
					<div class="col-md-2">상세 정보</div>
				</div>   
			</div>
			<div class="reservation tbody" style="padding: 10px 0;">
				<div class="row" id="number1">
					<div class="col-md-1">1</div>
					<div class="col-md-2">2025.03.30</div>
					<div class="col-md-2">04.06 ~ 04.07</div>
					<div class="col-md-2">강남구</div>
					<div class="col-md-1">남아</div>
					<div class="col-md-2">3세</div>
					<div class="col-md-2"><button class="reservation-btn" value="1">상세 정보</button></div>
				</div>
				<div class="row" id="number2">
					<div class="col-md-1">2</div>
					<div class="col-md-2">2025.03.28</div>
					<div class="col-md-2">04.01 ~ 04.05</div>
					<div class="col-md-2">동작구</div>
					<div class="col-md-1">여아</div>
					<div class="col-md-2">4세</div>
					<div class="col-md-2"><button class="reservation-btn" value="2">상세 정보</button></div>
				</div>
				<div class="row" id="number3">
					<div class="col-md-1">3</div>
					<div class="col-md-2">2024.03.20</div>
					<div class="col-md-2">03.25 ~ 03.30</div>
					<div class="col-md-2">동작구</div>
					<div class="col-md-1">남아</div>
					<div class="col-md-2">1세</div>
					<div class="col-md-2"><button class="reservation-btn" value="3">상세 정보</button></div>
				</div>
			</div>
		</div><!-- .reservation-table -->
	</div><!-- .content-container -->

	
</div> <!-- .main container -->

</main>

</body>
</html>