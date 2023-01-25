<%@page import="dao.MemberDao"%>
<%@page import="vo.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	request.setCharacterEncoding("UTF-8");
	MemberVo vo = new MemberVo(Integer.parseInt(request.getParameter("custno")),
						request.getParameter("custname"),
						request.getParameter("phone"),
						request.getParameter("address"),
						null,
						request.getParameter("grade"),
						request.getParameter("city"));
	MemberDao dao = MemberDao.getMemberDao();
	int result = dao.insert(vo);
//	String url="list.jsp";
//	response.sendRedirect(url);
	out.print("<script>");
	if(result==1) {
		out.print("alert('회원 등록을 완료했습니다.');");
	}else {
		out.print("alert('회원 등록 문제가 발생했습니다.');");
	}
	out.print("location.href='list.jsp'");
	out.print("</script>");
%>

