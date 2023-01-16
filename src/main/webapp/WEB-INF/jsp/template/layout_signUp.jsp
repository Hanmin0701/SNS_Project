<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SNS 회원가입</title>
<!-- jquery : bootstrap, datepicker -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>  

        <!-- bootstrap -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<!-- datepicker -->
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        
        <!-- css -->
        <link rel="stylesheet" type="text/css" href="/static/css/style.css">
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<header class="bg-danger">
			<jsp:include page="../include/header.jsp"/>
		</header>
		
		<!-- section -->
		<section class="contents bg-info">
			<jsp:include page="../${signUpView} }.jsp"/>
		</section>
		
		<!-- footer -->
		<footer class="bg-success">
			<jsp:include page="../include/footer.jsp"/>
		</footer>
		
	</div>
<script>
	$(document).ready(function() {
	    $("#signUpBtn").on('click', function() {
	    	
	    	// 중복
	    	$('#idCheckDuplicated').addClass('d-none') // 숨김
	    	$('#idCheckOk').addClass('d-none') // 숨김
	    	
	    		// AJAX 통신 - 중복 확인
		    	$.ajax({
		    		// request
		    		url:"/user/is_duplicated_id"
		    		, data:{"loginId:" loginId}
		    		
		    		// response
		    		, success:function() {
						if(data.code == 1) {
							//  성공
							if(data.result) {
								// 중복
								$('#idCheckDuplicated').removeClass('d-none');
							} else {
								// 사용가능
								$('#idCheckOk').removeClass('d-none');
							}
						} else {
							// 실패
							alert(data.errorMessage);
						}
					}
		    		, error:functino(e) {
		    			alert("중복확인에 실패했습니다.");
		    			
		    		}
	    		}
	    	});
	    		
	    	// 회원가입
	    	$('#signUpForm').on('submit', function(e) {
	    		e.preventDefault();
	    		let deleteBookingId = $(this).data('booking-id');
	    		
	    		// validation
		    	let id = $("input[name=loginId]").val().trim();
		    	let id = $("input[name=name]").val().trim();
		    	let id = $("input[name=userId]").val().trim();
		    	let id = $("input[name=password]").val().trim();
				
		    	if (loginId == "") {
		    		alert("전화번호나 이메일을 입력해주세요.");
		    		return false;
		    	}
		    	
		    	if (name == "") {
		    		alert("이름을 입력해주세요.");
		    		return false;
		    	}
		    	
		    	if (userId == "") {
		    		alert("사용자 이름을 입력해주세요.");
		    		return false;
		    	}
		    	
		    	if (password == "") {
		    		alert("비밀번호를 입력해주세요.");
		    		return false;
		    	}
	    		
	    		if ($('#idCheckOk').hasClass('d-none')) {
	    			alert("아이디 중복확인을 다시해주세요.")
	    			return false;
	    		}
	    		
	    		let url = $(this).attr('action');
	    		let params = $(this).serialize();
	    		console.log(params);
	    		
	    		$.post(url, params)
	    		.done(funcion(data){
	    			if(data.code == 1) {
	    				// 성공
	    				alert("가입을 환영합니다! 로그인 해주세요.");
	    				location.href="/user/sign_in_view";
	    			} else {
	    				// 실패
	    				alert(data.errorMessage);
	    			}
	    		});
	    	});
	 });
</script>
</body>
</html>