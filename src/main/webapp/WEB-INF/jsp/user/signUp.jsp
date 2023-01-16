<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="sign-up-box">
		<div>
			<img src="/src/main/resources/static/image/logo.png" alt="instagram_logo">
			<h4 class="text-secondary">친구들의 사진과 동영상을 보려면 <br> 가입하세요.</h4>
			<button class="btn btn-primary text-white" value="facebook으로 로그인"
				onclick="location.href="https://www.facebook.com/login.php?skip_api_login=1&api_key=124024574287414&kid_directed_site=0&app_id=124024574287414&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Foauth%3Fclient_id%3D124024574287414%26redirect_uri%3Dhttps%253A%252F%252Fwww.instagram.com%252Faccounts%252Fsignup%252F%26state%3D%257B%2522fbLoginKey%2522%253A%252212vryf61l03g7a1d0ddn6o6hi1hgf73ip0rjijbmsrnc1cphyfb%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252Ffxcal%252Fdisclosure%252F%2522%257D%26scope%3Demail%26response_type%3Dcode%252Cgranted_scopes%26locale%3Dko_KR%26ret%3Dlogin%26fbapp_pres%3D0%26logger_id%3Dbae31a31-3065-4d1d-bfca-ee08deafdb66%26tp%3Dunspecified&cancel_url=https%3A%2F%2Fwww.instagram.com%2Faccounts%2Fsignup%2F%3Ferror%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26state%3D%257B%2522fbLoginKey%2522%253A%252212vryf61l03g7a1d0ddn6o6hi1hgf73ip0rjijbmsrnc1cphyfb%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252Ffxcal%252Fdisclosure%252F%2522%257D%23_%3D_&display=page&locale=ko_KR&pl_dbl=0"> 
			</button>
		</div>
		
		<form id="signUpForm" method="post" action="/user/sign_up" class="border boder-dark">
			<div>
				<label><input type="text" id="loginId" name="loginId" class="form-control" placeholder="휴대폰 번호 또는 이메일 주소">
					<div id="idCheckDuplicated" class="small text-danger d-none">이미 사용중인 전화번호나 이메일입니다.</div>
					<div id="idCheckOk" class="small text-success d-none">사용 가능합니다.</div>
				</label>
				
				<br>
				
				<label><input type="text" id="name" name="name" class="form-control" placeholder="성명"></label><br>
				<div>
					<label><input  type="text" id="userId" name="userId" class="form-control" placeholder="사용자 이름"></label>
					<button type="button" id="userIdCheckBtn" class="btn btn-success">중복확인</button>
				</div>
				<label><input type="password" id="password" name="password" class="form-control" placeholder="비밀번호"></label>
			</div>
			<div>
				<small> 저희 서비스를 이용하는 사람이 회원님의 연락처 정보<br>를 Instagram에 업로드했을 수도 있습니다. 
					<a herf="https://www.facebook.com/help/instagram/261704639352628">더 알아보기</a> 
				</small><br>
				<button type="submit" id="signUpBtn" class="btn btn-primary">가입</button>
			</div>
		</form>
		<div class="border border-dark">
			계정이 있으신가요? <a href="/user/sign_in">로그인</a>
		</div>
		<div>
			<small class="text-center">앱을 다운로드 하세요</small>
			<div class="d-flex justify-content-center">
				<!-- google -->
				<img src="" onclick="location.href="https://play.google.com/store/apps/details?id=com.instagram.android&referrer=utm_source%3Dinstagramweb%26utm_campaign%3DsignupPage%26ig_mid%3D8837E510-0BBF-42C6-BC8B-295E03F53E29%26utm_content%3Dlo%26utm_medium%3Dbadge" 
				value="google" alt="google">
				<!-- microsoft -->
				<img src="" onclick="location.href="https://apps.microsoft.com/store/detail/instagram/9NBLGGH5L9XT" value="microsoft" alt="mircrosoft">
			</div>
		</div>
	</div>
</div>