<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='ko'>
  <head>
    <meta charset='utf-8' />
   	<script src="./js/jquery-3.7.0.min.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.8/index.global.min.js'></script>
    <script>
    /* document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth'
    });
    
    calendar.render();
  }); */
      
      
		$(document).ready(function(){
			var calendarEl = $("#calendar");
			var calendar = new FullCalendar.Calendar(calendarEl, {
			initialView: 'dayGridMonth'
		});
			calendar.render();
		});

    </script>
  </head>
  <body>
    <div id='calendar'></div>
  </body>
</html>