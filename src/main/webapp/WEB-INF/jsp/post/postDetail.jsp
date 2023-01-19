<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="w-50">
		<h1>글 상세/수정</h1>
		
		<input type="text" id="subject" class="form-control" placeholder="제목을 입력하세요.">
		<textarea class="form-control" id="content" placeholder="내용을 입력하세요." rows="15"></textarea>
		<div class="d-flex justify-content-end my-4">
			<input type="file" id="file" accept=".jsg, .jpeg, .png, .gif">
		</div>
		
		<div class="d-flex justify-content-between">
			<button type="button" id="postDeleteBtn" class="btn btn-secondary">삭제</button>
			
			<div>
				<button type="button" id="postListBtn" class="btn btn-dark">목록</button>
				<button type="button" id="postUpdateBtn" class="btn btn-info">저장</button>
			</div>
		</div>
	</div>
</div>