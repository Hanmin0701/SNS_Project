<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="contents-box">
		<div class="write-box border rounded m-3">
			<textarea id="writeTextArea" placeholder="내용을 입력해주세요" class="w-100 border-0"></textarea>
				
			<div class="d-flex justify-content-between">
				<div class="file-upload d-flex">
					<input type="file" id="file" class="d-none" accept=".gif, .jpg, .png, .jpeg">
					<a href="#" id="fileUploadBtn"><img width="35" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-image-512.png"></a>

					<div id="fileName" class="ml-2">
					</div>
				</div>
				<button id="writeBtn" class="btn btn-info">게시하기</button>
			</div>
		</div>
		
		<div class="timeline-box my-5">
			<div class="card border rounded mt-3">
				<div class="p-2 d-flex justify-content-between">
					<span class="font-weight-bold">글쓰기</span>
					
					<a href="#" class="more-btn" data-toggle="modal" data-target="#modal" data-post-id="${card.post.id}">
						<img src="https://www.iconninja.com/files/860/824/939/more-icon.png" width="30">
					</a>
				</div>
				
				<div class="card-img">
					<img src="https://cdn.pixabay.com/photo/2022/04/13/20/32/silhouette-7131109_960_720.png" class="w-100" alt="본문 이미지">
				</div>
				
				<%-- 좋아요 --%>
				<div class="card-like m-3">
					<a href="#" class="like-btn">
					<img src="https://www.iconninja.com/files/214/518/441/heart-icon.png" width="18" height="18" alt="empty heart">
						좋아요 10개
					</a>
				</div>
				
				<%-- 글 --%>
				<div class="card-post m-3">
					<span class="font-weight-bold">글쓰니</span>
					<span>글 내용입니다</span>
				</div>
				
				<div class="card-comment-desc border-bottom">
					<div class="ml-3 mb-1 font-weight-bold">댓글</div>
				</div>
				
				<div class="card-comment-list m-2">
					<div class="card-comment m-1">
						<span class="font-weight-bold">댓글쓰니:</span>
						<span>댓글 내용11111</span>
						
						<a href="#" class="commentDelBtn">
							<img src="https://www.iconninja.com/files/603/22/506/x-icon.png" width="10px" height="10px">
						</a>
					</div>
					
					<div class="comment-write d-flex border-top mt-2">
						<input type="text" class="form-control border-0 mr-2" placeholder="댓글 달기"/> 
						<button type="button" class="comment-btn btn btn-light" data-post-id="${card.post.id}">게시</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	$(document).ready(function(){
		$('#fileUploadBtn').on('click', function(e){
			e.preventDefault(); 
			$('#file').click(); 
		});
		
		$('#file').on('change', function(e){
			let fileName = e.target.files[0].name;  
			
			let ext = fileName.split(".").pop().toLowerCase();
			if (ext != 'jpg' && ext != 'jpeg' && ext != 'png' && ext != 'gif') {
				alert("이미지 파일만 업로드 할 수 있습니다.");
				$('#file').val('');  
				$('#fileName').val('');
				return;
			}
			
			$('#fileName').text(fileName); 
		});
	});
</script>