<%
    String s1=request.getParameter("t1");
    String s2=request.getParameter("t2");
    int amount=Integer.parseInt(s1);
    int time=Integer.parseInt(s2);
    int rate=10;
    if(time<5){
        rate=8;
    }
    int interest=(amount*rate*time)/100;
    int net=amount+interest;
%>
<html>
    <body>
        <h2>Interest Details</h2>
        <table border="2" width="2" cellspacing="2" cellpadding="2">
            <tbody>
                <tr>
                    <td>Amount</td>
                    <td><% out.println(amount); %></td>
                </tr>
                <tr>
                    <td>Time</td>
                    <td><% out.println(time);%></td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td><%out.println(rate);%></td>
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
        <a href="index.html">Home</a>
    </body>
</html>
