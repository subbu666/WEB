<%@ page import= "java.sql.*"%>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temp","root","subbu");
out.println("<h3>Connection Established</h3>");
stmt=con.createStatement();
//stmt.executeUpdate("create table student(rollno int(6),sname char(30))");
out.println("<h3>Table Created</h3>");
//stmt.executeUpdate("insert into student values(9,\"ABC\")");
//stmt.executeUpdate("insert into student values(7,\"DEF\")");
//stmt.executeUpdate("insert into student values(4,\"GHI\")");
out.println("<h3>Records Inserted</h3>");
rs=stmt.executeQuery("select *from student");
out.println("<table allign=center border=1 cellspacing=0 width=200 height=200>");
out.println("<tr><th>Roll NO</th><th>NAME</th></tr>");
out.println("<h2>Roll NO Name</h2>");
while(rs.next())
{
String s1=rs.getString("rollno");
String s2=rs.getString("sname");
out.println("<tr allign=center><td>"+s1+"</td> <td>"+s2+"</td></tr>");
out.println("<h2>"+s1+"   "+s2+"</h2>");
}
out.println("</table>");
con.close();
rs.close(); 
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>