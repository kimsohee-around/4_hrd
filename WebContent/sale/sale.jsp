<%@page import="vo.SaleVo"%>
<%@page import="java.util.List"%>
<%@page import="dao.SaleDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	SaleDao dao = SaleDao.getSaleDao();
	List<SaleVo> list = dao.salesTotal();

	request.setAttribute("list", list);
	pageContext.forward("saleView.jsp");

%>