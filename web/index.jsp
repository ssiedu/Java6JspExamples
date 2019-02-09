<%@taglib uri="/WEB-INF/tlds/mylib.tld" prefix="test" %>
<%@include file="header.jsp" %>
<%
    session.setAttribute("author", "Manoj");
%>
<html>
    <body>
        <h3>Interest Calculator</h3>
        <form action="Calculate.jsp">
            <pre>
            Amount  <input type="text" name="t1"/>
            Time    <input type="text" name="t2"/>
                    <input type="submit" value="Calculate"/>
            </pre>
        </form>
        <hr>
        <test:info/>
        <test:mobile/>
        <a href="studentlist.jsp">View-All-Students</a>
    </body>
</html>
