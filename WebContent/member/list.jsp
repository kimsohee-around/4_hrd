<%@page import="vo.MemberVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//컨트롤러 : 요청을 처리해서 View 로 처리한 결과 데이터를 전달합니다.
	//MVC 모델1 : 컨트롤러가 jsp 이고 , 모델2(front controller) 에서 서블릿 클래스로 합니다 
	MemberDao dao = MemberDao.getMemberDao();
	List<MemberVo> list = dao.selectList();

	request.setAttribute("list", list);
	pageContext.forward("listView.jsp");		//jsp 내장 객체 : pageContext

%>