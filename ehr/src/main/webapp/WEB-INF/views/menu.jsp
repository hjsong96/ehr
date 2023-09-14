<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <script src="./js/jquery-3.7.0.min.js"></script>
 <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
      <div class="menu">
         <div class="menu-item" onclick="url('')"><i class="xi-layout xi-2x"></i><br>인사관리</div>
         <div class="menu-item" onclick="url('./main')"><i class="xi-paper-o xi-2x"></i><br>급여관리</div>
         <div class="menu-item" onclick="url('')"><i class="xi-user-o xi-2x"></i><br>근태관리</div>
         <div class="menu-item" onclick="url('')"><i class="xi-bell-o xi-2x"></i><br>공지사항</div>
         <div class="menu-item logout" onclick="url('./logout')"><i class="xi-flag-o xi-2x"></i><br>로그아웃</div>
      </div>
      <script>function url(url){location.href="./"+url;}</script>
      <script type="text/javascript">

 </script>