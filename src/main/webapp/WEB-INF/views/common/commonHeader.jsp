<%@ page session="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Bulma!</title>

	<style type="text/css">
/* 		import 'tui-pagination/dist/tui-pagination.css'; */
	</style>
	<script type="text/javascript">
 		"use strict";
	</script>
  </head>
  <body>
 
  <nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
<!--     <a class="navbar-item" href="https://bulma.io"> -->
<!--       <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28"> -->
<!--     </a> -->

    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>

  <div id="navbarBasicExample" class="navbar-menu">
    <div class="navbar-start">
      <a class="navbar-item" href="${contextPath}/notice.so">
        Home
      </a>

      <a class="navbar-item" href="${contextPath}/noticeDetail.so">
        Student
      </a>

      <div class="navbar-item has-dropdown is-hoverable">
        <a class="navbar-link">
          More
        </a>

        <div class="navbar-dropdown">
          <a class="navbar-item">
            About
          </a>
          <a class="navbar-item">
            Jobs
          </a>
          <a class="navbar-item">
            Contact
          </a>
          <hr class="navbar-divider">
          <a class="navbar-item">
            Report an issue
          </a>
        </div>
      </div>
    </div>

    <div class="navbar-end">
      <div class="navbar-item">
        <div class="buttons">
          <a class="button is-primary" onclick="opendModal('${contextPath}/signup.so', 'signup_modal', null, false);">
            <strong>Sign up</strong>
          </a>
          <a class="button is-light" onclick="opendModal('${contextPath}/login.so', 'login_modal', null, false);">
            Log in
          </a>
        </div>
      </div>
    </div>
  </div>
</nav> 	

<!-- 로그인 모달 -->
<div id="login_modal"></div>
<!-- 회원가입 모달 -->
<div id="signup_modal"></div>