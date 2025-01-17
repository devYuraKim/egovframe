<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : filter.jsp
  Description :  UX list component
  Modification Information

      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2011.07.14    권자영          최초 생성
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - List </title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
    
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
        
	</head>
	
    <body>
    
		<!-- page start -->
		<div data-role="page" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/components/list/list.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
				<!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-deth1">
						<h2>Search Filter Bar</h2>
						<p>전자정부 모바일 표준프레임워크는 클라이언트 단에서 간단하게 리스트를 검색할 수 있는 검색 필터를 제공한다. 
						리스트에 <strong>data-filter=”true”</strong> 속성을 추가하면 리스트 상단에  검색 박스와 함께 자동 검색 기능이 제공되는 검색 필터를 생성할 수 있다. 
						기본적으로  상위의 테마가 적용되고 <strong>data-filter-theme</strong> 속성에 테마를 적용하면 검색 필터의 색상을 변경할 수 있다.<br>
						또한, li 내에 <strong>data-filtertext</strong> 를 통해 alias처럼 다른 text들을 같이 filtering 할 수 있도록 지정한다.
						아래의 List에서 Vanilla, Strawberry, Chocolate는 data-filtertext에 지정한 대로 banilla, sweet, cacao와 같이 숨겨진 다른 문구를 
						이용해 검색할 수 있다.						
						</p>

						<div class="egov-deth2">
							<ul data-role="listview" data-inset="true" data-filter="true">
								<li data-role="list-divider">Menu</li>
								<li><a href="#">Americano</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Caffe Latte</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Caffe Mocha</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Caramel Macchiato</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Affogato</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li data-filtertext="vanilla banilla"><a href="#">Vanilla</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Yogurt</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li data-filtertext="strawberry sweet"><a href="#">Strawberry</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li><a href="#">Fashion fruit</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
								<li data-filtertext="chocolate cacao"><a href="#">Chocolate</a><a href="<c:url value="/guide/components/list/format.do"/>">Detail</a></li>
							</ul>
							
							<ul class="link">
								<li>&lt;ul data-role="listview" data-inset="true" data-filter="true"&gt;</li>
								<li class="egov-txtIn1">&lt;li data-role="list-divider"&gt;Coffee&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Americano&lt;/a&gt;&lt;a href="/guide/components/list/format.do">Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Caffee Latte&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Caffe Mocha&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Caramel Macchiato&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Affogato&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li data-filtertext="vanilla banilla"&gt;&lt;a href="#"&gt;Vanilla&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Yogurt&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li data-filtertext="strawberry sweet"&gt;&lt;a href="#"&gt;Strawberry&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#"&gt;Fashion fruit&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;li data-filtertext="chocolate cacao"&gt;&lt;a href="#"&gt;Chocolate&lt;/a&gt;&lt;a href="/guide/components/list/format.do"&gt;Detail&lt;/a&gt;&lt;/li&gt;</li>
								<li>&lt;/ul&gt;</li>
							</ul>
						</div>
					</div>

				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="listIndex.jsp"></jsp:include>
				</div>			
				<!-- content-secondary end -->
				
			</div>
			<!-- content end -->
			
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				 <h4 class="main">Copyright (c) MINISTRY OF THE INTERIOR AND SAFETY. All Rights reserved.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>
</html>