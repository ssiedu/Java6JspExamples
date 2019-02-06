<%@page  import="java.sql.*, java.util.ArrayList" %>

<%
  ArrayList list;
  Class.forName("com.mysql.jdbc.Driver");
  String url="jdbc:mysql://localhost:3306/stdmgmt";
  String user="root";
  String password="root";
  String sql="select roll,name,address,course from student";
  Connection con=DriverManager.getConnection(url, user, password);
  Statement stmt=con.createStatement();
  ResultSet rs=stmt.executeQuery(sql);
%>
<html>
    <body>
        <h3>Student-List</h3>
        <table border="2">
            <tr>
                <td>Rno</td><td>Name</td><td>Address</td><td>Course</td>
            </tr>
<%
    while(rs.next()){
        String s1=rs.getString(1);
        String s2=rs.getString(2);
        String s3=rs.getString(3);
        //String s4=rs.getString(4);
%>
<tr>
    <td><%=s1%></td>
    <td><%=s2%></td>
    <td><%=s3%></td>
    <td><%=rs.getString(4)%></td>
</tr>        
<%
    }
    con.close();
%>
    </body>
</html>
