<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Memo 게시판</title>
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
		<header class="bg-info">
			<jsp:include page="../include/header_signIn.jsp" />
		</header>
		<section class="contents my-5">
			<jsp:include page="../${viewName}.jsp" />
		</section>
		<footer class="bg-info">
			<jsp:include page="../include/footer.jsp" />
		</footer>
	</div>
<script type="text/javascript">
	$(document).ready(function(){
		// 목록 버튼 클릭 => 글 목록으로 이동
		$('#postListBtn').on('click', function(){
			locaiton.href="/post/post_list_view";
		});
		
		// 모두 지우기 버튼 클릭 => 제목, 글 내용 지운다.
		$('#clearBtn').on('click', function(){
			$('#subject').val(""); // 이 id를 안에 내용을 채우려고 할 때
			$('#content').val("");
		});
		
		// 글 저장
		$('#postCreateBtn').on('click', function(){
			let subject = $('#subject').val().trim();
			let content = $('#content').val().trim();
			
			if(subject == '') {
				alert("제목을 입력하세요.");
			}
			
			console.log(content);
			
			let file = $('#file').val(); // C:\fakepath\p_pysic_module.py
			
			// 파일이 업로드 된 경우에만 확장자 체크
			if(file != '') {
				let ext = file.split(".").pop().toLowerCase(); 
				if($.inArray(ext, ['jpg', 'jpeg', 'png', 'gif'])  == -1) {
					alert("이미지 파일만 업로드 할 수 있습니다.");
					$('#file').val("");
					return;
				}
			}
				
			// 서버 - ajax
			let formData = new FormData();
			formData.append("subject", subject); 
			formData.append("content", content);
			formData.append("file", $('#file')[0].files[0]);
			
			// ajax 통신으로 formData에 있는 데이터 전송
			$.ajax({
				// request
				type:"post"
				, url:"/post/create"
				, data:formData				
				, enctype:"mutipart/form-data" 
				, processData:false 		   
				, contentType:false 		  
				
				// response
				, success:function(data) {
					if(data.code == 1) {
						// 성공
						alert("메모가 저장되었습니다.");
						location.href="/post/post_list_view";
					} else{
						// 실패
						alert(data.errorMessage);
					} 
				}
				, error:function(e) {
					alert("메모 저장에 실패했습니다.");
				}				
			});
			
		});
	});
</script>
</body>
</html>