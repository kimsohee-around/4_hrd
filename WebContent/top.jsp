<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
		<h2>홈쇼핑 회원관리 ver1.0</h2>
	</header>
	<nav>
		<ul>					
			<li><a href="<%= request.getContextPath() %>/member/regView.jsp">회원등록</a></li>  <!-- 뷰  -> 처리   -->
			<li><a href="<%= request.getContextPath() %>/member/list.jsp">회원목록조회/수정</a></li> <!--  처리 -> 뷰  -->
			<li><a href="<%= request.getContextPath() %>/sale/sale.jsp">회원매출조회</a></li>
			<li><a href="<%= request.getContextPath() %>">홈으로.</a></li>
		</ul>	
</nav>
<!-- include 되는 파일에서 지정한 상대 경로는 위치에 따라 오류 
	오류를 없애는 정확한 방법은 절대 경로를 사용. request.getContextPath() 로 시작하여 짖
-->