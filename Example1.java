import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example1 extends HttpServlet
{
public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
PrintWriter out=res.getWriter();
res.setContentType("text/html");
out.println("<h1>Welcome to Servlet Programming</h1>");
}
}