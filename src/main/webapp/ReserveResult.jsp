<%@page import="biz.vo.GhblListVO"%>
<%@page import="biz.dao.GhblRentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>

	<jsp:useBean id="rbean" class="biz.vo.GhblReserveVO">
		<jsp:setProperty name="rbean" property="*" />
	</jsp:useBean>
	
<%
	GhblRentDAO gdao = new GhblRentDAO();

	GhblListVO cbean = gdao.getOneMovie(rbean.getNo());
	
	/* 출력계산 */
	// 총 금액
	int totalmovie = cbean.getPrice() * rbean.getQty() * rbean.getDday();
	
	// 옵션 금액
	int usein = 0;
	if(rbean.getUsein()==10000) {
		usein = 10000;
	}
	int useblue = 0;
	if(rbean.getUseblue()==10000) {
		usein = 10000;
	}
	int usepop = 0;
	if(rbean.getUsepop()==10000) {
		usein = 10000;
	}
	int usecola = 0;
	if(rbean.getUsecola()==10000) {
		usein = 10000;
	}
	
	// 총 대여금액
	int totaloption = (rbean.getQty() * rbean.getDday()) * (usein + useblue + usepop + usecola);
	
%>	
	<h2>Ghibli Studio Movies Result</h2>
		<div class="info">
			<ul>
				<li><a href="#"> <img src="./images/<%=cbean.getImg() %>" alt="<%=cbean.getName()%>">
				</a></li>
			</ul>
			<ul class="movie_info">
				<li>
					영화 기본 대여 금액 : &nbsp;&nbsp;&nbsp;
					<%=totalmovie %>
				</li>
				<li>
					영화 옵션 대여 금액 : &nbsp;&nbsp;&nbsp;
					<%=totaloption%>
				</li>
				<li>
					영화 총 대여 금액 : &nbsp;&nbsp;&nbsp;
					<%=totalmovie + totaloption %>
				</li>

			</ul>
		</div>