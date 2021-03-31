<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<section class="ftco-section ftco-no-pb ftco-no-pt bg-light">
	<div class="container">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-10 mb-5 text-center">
						<ul class="product-category">
							<li>
								<a>회원가입</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-5">
				</div>
		        <div class="col-lg-6">
		            <form:form modelAttribute="userRegDto" action="/signup" method="post">
		                <div class="form-group input-group">
		                    <form:input type="text" placeholder="ID" path="id"/>
		                    <form:errors path="id"/>
		                </div>
		                <div class="form-group input-group">
		                    <form:input id="email" type="text" placeholder="Email" path="email"/>
		                    <input type="button" id="email-btn" class="btn btn-white" onClick="fn_sendEmail()" value="이메일 인증">
		                    <form:errors path="email"/>
		                </div>
		                <div class="form-group input-group">
		                    <input type="text" disabled="disabled" id="inputCode" placeholder="인증번호를 입력해주세요">
		                    <input type="button" id="code-btn" class="btn btn-white" onClick="fn_checkCode()" value="인증번호 확인" disabled="disabled">
		                </div>
		                <div class="form-group input-group">
		                    <form:input type="text" placeholder="Name" path="name"/>
		                    <form:errors path="name"/>
		                </div>
		                <div class="form-group input-group">
		                    <form:password placeholder="Password" path="password"/>
		                    <form:errors path="password"/>
		                </div>
		                <div class="form-group input-group">
		                    <form:password placeholder="Password Check" path="passwordCheck"/>
		                    <form:errors path="passwordCheck"/>
		                </div>
		                <input type="submit" id="submit-btn" class="btn btn-white" value="가입하기">
		                <button type="reset" class="btn btn-white">취소하기</button>
		            </form:form>
		        </div>
			</div>
		</section>
	</div>
</section>