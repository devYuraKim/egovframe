/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.85
 * Generated at: 2024-10-17 17:53:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.main.inc;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.HashMap;

public final class EgovIncLeftmenu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1710744842064L));
    _jspx_dependants.put("jar:file:/Users/EGOVEDU/eGovFrame-4.2.0/workspace.edu/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/lab105/WEB-INF/lib/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425946270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.HashMap");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

String menuNo = ((String)session.getAttribute("menuNo")!=null)?(String)session.getAttribute("menuNo"):"11";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"nav\">	\r\n");
      out.write("	<div class=\"top\"></div>             \r\n");
      out.write("	<div class=\"nav_style\">\r\n");
      out.write("	<ul>\r\n");
      out.write("	    ");
 if (menuNo.indexOf("1")== 0) {
      out.write("\r\n");
      out.write("		<li class=\"leftmenu_dept01\">\r\n");
      out.write("			<a href=\"/sht_webapp/EgovPageLink.do?menuNo=11&linkIndex=9\">사이트소개</a>\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=11&linkIndex=9\">소개</a></li>	\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=12&linkIndex=10\">연혁</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=13&linkIndex=11\">조직소개</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=14&linkIndex=12\">찾아오시는 길</a></li>\r\n");
      out.write("			</ul> \r\n");
      out.write("		</li>\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("		");
 if (menuNo.indexOf("2")== 0) {
      out.write("\r\n");
      out.write("		<li class=\"leftmenu_dept01\">\r\n");
      out.write("			<a href=\"/sht_webapp/EgovPageLink.do?menuNo=21&linkIndex=13\">정보마당</a>\r\n");
      out.write("			<ul>	\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=21&linkIndex=13\">주요사업 소개</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=22&linkIndex=14\">대표서비스 소개</a></li>\r\n");
      out.write("			</ul> \r\n");
      out.write("		</li>\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("        ");
 if (menuNo.indexOf("3")== 0) {
      out.write("\r\n");
      out.write("		<li class=\"leftmenu_dept01\">\r\n");
      out.write("			<a href=\"/sht_webapp/EgovPageLink.do?menuNo=31&linkIndex=15\">고객지원</a>\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=31&linkIndex=15\">자료실</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=32&linkIndex=16\">묻고답하기</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/EgovPageLink.do?menuNo=33&linkIndex=17\">서비스신청</a></li>\r\n");
      out.write("			</ul>\r\n");
      out.write("		</li>\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("        ");
 if (menuNo.indexOf("4")== 0) {
      out.write("\r\n");
      out.write("		<li class=\"leftmenu_dept01\">\r\n");
      out.write("			<a href=\"/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageWeekList.do?menuNo=41\">알림마당</a>\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageDailyList.do?menuNo=41\">오늘의 행사</a></li>	\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageWeekList.do?menuNo=42\">금주의 행사</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA&menuNo=43\">공지사항</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_BBBBBBBBBBBB&menuNo=44\">사이트갤러리</a></li>\r\n");
      out.write("			</ul> \r\n");
      out.write("		</li>\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("        ");
 if (menuNo.indexOf("5")== 0) {
      out.write("\r\n");
      out.write("		<li class=\"leftmenu_dept01\">\r\n");
      out.write("			<a href=\"/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageMonthList.do?menuNo=51\">사이트관리</a>\r\n");
      out.write("			<ul>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/smt/sim/EgovIndvdlSchdulManageMonthList.do?menuNo=51\">일정관리</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/com/selectTemplateInfs.do?menuNo=52\">게시판템플릿관리</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/bbs/SelectBBSMasterInfs.do?menuNo=53\">게시판생성관리</a></li>\r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/com/selectBBSUseInfs.do?menuNo=54\">게시판사용관리</a></li> \r\n");
      out.write("				<li class=\"dept02\"><a href=\"/sht_webapp/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_AAAAAAAAAAAA&menuNo=55\">공지사항관리</a></li>\r\n");
      out.write("                <li class=\"dept02\"><a href=\"/sht_webapp/cop/bbs/selectBoardList.do?bbsId=BBSMSTR_BBBBBBBBBBBB&menuNo=56\">사이트갤러리관리</a></li>\r\n");
      out.write("			</ul> \r\n");
      out.write("		</li>\r\n");
      out.write("		");
 } 
      out.write("\r\n");
      out.write("	</ul>\r\n");
      out.write("	</div>\r\n");
      out.write("	<div class=\"bottom\"></div>		\r\n");
      out.write("</div>\r\n");
      out.write("<!-- //메뉴 끝 -->	\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
