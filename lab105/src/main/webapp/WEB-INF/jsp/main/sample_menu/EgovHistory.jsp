<%--
  Class Name : EgovHistory.jsp
  Description : 샘플화면 - 사이트 연혁(sample)
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.08.31   JJY       경량환경 버전 생성
 
    author   : 실행환경개발팀 JJY
    since    : 2011.08.31 
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Language" content="ko" >
<title>표준프레임워크 경량환경 홈페이지템플릿</title>
<link href="<c:url value='/'/>css/common.css" rel="stylesheet" type="text/css" >
</head>
<body>
<noscript>자바스크립트를 지원하지 않는 브라우저에서는 일부 기능을 사용하실 수 없습니다.</noscript>	
<!-- 전체 레이어 시작 -->
<div id="wrap">
	<!-- header 시작 -->
    <div id="header_mainsize">
        <jsp:include page="/WEB-INF/jsp/main/inc/EgovIncHeader.jsp"/>
    </div>
    <div id="topnavi">
        <jsp:include page="/WEB-INF/jsp/main/inc/EgovIncTopnav.jsp"/>
    </div>
    <!-- //header 끝 -->
	<!-- container 시작 -->
	<div id="container">
		<!-- 좌측메뉴 시작 -->
		<div id="leftmenu"><jsp:include page="/WEB-INF/jsp/main/inc/EgovIncLeftmenu.jsp"/></div>
		<!-- //좌측메뉴 끝 -->
			<!-- 현재위치 네비게이션 시작 -->
			<div id="content">
				<div id="cur_loc">
					<div id="cur_loc_align">
						<ul>
							<li>HOME</li>
							<li>&gt;</li>
							<li>사이트소개</li>
							<li>&gt;</li>
							<li><strong>연혁</strong></li> 
						</ul>
					</div>
				</div>				
				<div id="content_img_div"><img src="<c:url value='/'/>images/subtitle/img_subtitle01.gif" width="776" height="230" alt="그림테스트" /></div>   
				<!-- main content 시작 -->
				<div class="content_field">
						<div><h2>표준프레임워크 연혁</h2></div>
							<h3>History</h3>
							<fieldset><legend>조건정보 영역</legend>
									<p>표준프레임워크 활성화 전담조직으로 한국정보화진흥원(NIA)에 2010년 11월 4일 「표준프레임워크센터」가 설립되었으며 정책지원, 글로벌 확산 등을 담당할 NIA 인력과 R&amp;D, 기술지원 등을 담당할 외부 민간 전문가로 구성되었습니다. </p>
							</fieldset>			
						
						</div>
				</div>
				<!-- //main content 끝 -->
	</div>	
	<!-- //container 끝 -->
	<!-- footer 시작 -->
	<div id="footer"><jsp:include page="/WEB-INF/jsp/main/inc/EgovIncFooter.jsp"/></div>
	<!-- //footer 끝 -->
</div>
<!-- //전체 레이어 끝 -->
</body>
</html>