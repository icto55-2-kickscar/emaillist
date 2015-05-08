<%@ page import="com.sds.icto.emaillist.vo.EmailListVo" %>
<%@ page import="com.sds.icto.emaillist.dao.EmailListDao" %>
<%
request.setCharacterEncoding( "utf-8" );

// 이메일을 등록합니다.
String firstName = request.getParameter( "fn" );
String lastName = request.getParameter( "ln" );
String email = request.getParameter( "email" );

EmailListVo vo = new EmailListVo();
vo.setFirstName( firstName );
vo.setLastName( lastName );
vo.setEmail( email );

EmailListDao dao = new EmailListDao();
dao.insert( vo );

response.sendRedirect( "/emaillist" );
%>