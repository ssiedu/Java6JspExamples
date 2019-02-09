<%@taglib uri="/WEB-INF/tlds/mylib.tld" prefix="data" %>
<%@include file="header.jsp" %>
<%@page  session="true" isThreadSafe="false"  import="java.util.*,java.sql.*" %>

<%!
    public int x;
    int calculateInterest(int amt, int r, int t){
       return (amt*r*t)/100;
    }    
%>
<%
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    int amount=Integer.parseInt(s1);
    int time=Integer.parseInt(s2);
    int rate=10;
    if(time<5){
        rate=8;
    }
    //int interest=(amount*rate*time)/100;
    int interest=calculateInterest(amount, rate,time);
    int net=amount+interest;
%>
<html>
    <body>
        <data:mobile/>
        <h2>Interest Details</h2>
        <table border="2" width="2" cellspacing="2" cellpadding="2">
            <tbody>
                <tr>
                    <td>Amount</td>
                    <td><%=amount%></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><%=time%></td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td><%=rate%></td>
                </tr>
                <tr>
                    <td>Interest</td>
                    <td><%out.println(interest);%></td>
                </tr>
                <tr>
                    <td>Net</td>
                    <td><%out.println(net);%></td>
                </tr>
            </tbody>
        </table>
        <a href="index.jsp">Home</a>
    </body>
</html>
This App Is Written By  : <%=session.getAttribute("author")%>