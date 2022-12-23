<%@page import="biz.vo.GhblListVO"%>
<%@page import="biz.dao.GhblRentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int no = Integer.parseInt(request.getParameter("no"));
	GhblRentDAO gdao = new GhblRentDAO();
	GhblListVO bean = gdao.getOneMovie(no);
%>
	<h2>Ghibli Studio Movies Info</h2>
	<form action="index.jsp?content=ReserveOptionSelect.jsp" method="post">
		<div class="info">
			<ul>
				<li>
					<a href="#">
						<img src="./images/<%=bean.getImg() %>" alt="<%=bean.getName() %>" >
					</a>
				</li>
			</ul>
			<ul>
				<li>영화 이름 : </li>
				<li>영화 수량 : &nbsp;&nbsp;&nbsp;
					<select name="qyt" class="form-control">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>
				</li>
				<li>영화 분류 : </li>
				<li>영화 가격 : </li>
				<li>영화사 : </li>
				<li>영화 정보 : </li>
			</ul>
		</div>
	</form>