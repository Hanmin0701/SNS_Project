<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<div class="text-center">
		<span>
			<textarea style="border-none" placeholder="내용을 입력해주세요."></textarea>
		</span>
		<span class="d-flex">
			<img src="main/resources/static/image/addImg.pug">
			<button type="button" class="btn btn-primary text-white">업로드</button>
		</span>
	</div>
	
	<!-- top -->
	<div class="border border-dark d-flex">
		<span>${userName}</span>
		<img alt="more" src="more-icon.pug">
	</div> <hr>
	
	<!-- middle -->
	<img alt="post" src="https://cdn.pixabay.com/photo/2014/09/09/12/46/basketball-440057__340.jpg">
	
	<!-- heart -->
	<img alt="heart" src="heart-empty.pug"> <br>
	<div>
		<span class="text-weight-bold">${userName}</span>
	</div>
	
	<h4>댓글</h4>
	
	<hr>
	
	<!-- bottom -->
	<span class="text-weight-bold">${userName} :</span>
	<span class="text-weight-bold">${userName} :</span>
	
	<hr>
	
	<div class="input-group">
		<input type="text" class="form-control" placeholder="댓글 달기">
	</div>
	<div class="input-group-append">
		<span class="input-group-text">게시</span>
	</div>
</div>