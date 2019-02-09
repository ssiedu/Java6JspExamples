<%@page errorPage="myerrorpage.jsp" isELIgnored="true" session="true" isThreadSafe="true" contentType="text/html" language="java" import="java.sql.*" %>

<%
    String s1=request.getParameter("num");
    int n=Integer.parseInt(s1);
    out.println(100/n);
%>
