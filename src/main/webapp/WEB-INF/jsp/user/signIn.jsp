<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="d-flex justify-content-center">
	<div class="border border-dark">
		<div class="login-box">
			<img src="/src/main/resources/static/image/logo.png" alt="instagram_logo">
		</div>
		
		<form id="loginForm" action="/user/sign_in" method="post">
			<div>
				<label>loginId<input type="text" id="phoneNumberOrUserIdOrEmail" name="phoneNumberOrEmail" class="form-control" placeholder="전화번호, 이메일 주소"></label><br>
				<label>password<input type=""password"" id="password" name=""password"" class="form-control" placeholder="비밀번호"></label><br>
				<input type="submit" name="signInBtn" class="btn btn-block btn-primary" value="로그인">
			</div>
			<hr>또는<hr>
			<div>
				<a onclick="https://www.facebook.com/login.php?skip_api_login=1&api_key=124024574287414&kid_directed_site=0&app_id=124024574287414&signed_next=1&next=https%3A%2F%2Fwww.facebook.com%2Fdialog%2Foauth%3Fclient_id%3D124024574287414%26redirect_uri%3Dhttps%253A%252F%252Fwww.instagram.com%252Faccounts%252Fsignup%252F%26state%3D%257B%2522fbLoginKey%2522%253A%252212vryf61l03g7a1d0ddn6o6hi1hgf73ip0rjijbmsrnc1cphyfb%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252Ffxcal%252Fdisclosure%252F%2522%257D%26scope%3Demail%26response_type%3Dcode%252Cgranted_scopes%26locale%3Dko_KR%26ret%3Dlogin%26fbapp_pres%3D0%26logger_id%3Dbae31a31-3065-4d1d-bfca-ee08deafdb66%26tp%3Dunspecified&cancel_url=https%3A%2F%2Fwww.instagram.com%2Faccounts%2Fsignup%2F%3Ferror%3Daccess_denied%26error_code%3D200%26error_description%3DPermissions%2Berror%26error_reason%3Duser_denied%26state%3D%257B%2522fbLoginKey%2522%253A%252212vryf61l03g7a1d0ddn6o6hi1hgf73ip0rjijbmsrnc1cphyfb%2522%252C%2522fbLoginReturnURL%2522%253A%2522%252Ffxcal%252Fdisclosure%252F%2522%257D%23_%3D_&display=page&locale=ko_KR&pl_dbl=0"
					class="text-weight-bold" value="facebook으로 로그인"/> 
				<small><a onclick="https://www.instagram.com/accounts/password/reset/">비밀번호를 잊으셨나요?</a></small>
			</div>
	</div>
			
			<div class="d-flex border border-dark">
				계정이 없으신가요?
				<a class="text-primary" href="/user/sign_up_view">가입하기</a>
			</div>
		</form>
		<div>
			<small class="text-center">앱을 다운로드 하세요</small>
			<div class="d-flex justify-content-center">
	</div>
				<!-- google -->
				<img src="" onclick="location.href="https://play.google.com/store/apps/details?id=com.instagram.android&referrer=utm_source%3Dinstagramweb%26utm_campaign%3DsignupPage%26ig_mid%3D8837E510-0BBF-42C6-BC8B-295E03F53E29%26utm_content%3Dlo%26utm_medium%3Dbadge" 
				value="google" alt="google">
				<!-- microsoft -->
				<img src="" onclick="location.href="https://apps.microsoft.com/store/detail/instagram/9NBLGGH5L9XT" value="microsoft" alt="mircrosoft">
			</div>
		</div>
	</div>
</div>