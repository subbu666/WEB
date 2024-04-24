import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Authentic3 extends HttpServlet
{
public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
{
PrintWriter out = res.getWriter();
res.setContentType("text/html");
out.println("<form method = \"post\" action=\"Authentic4\">");
out.println("<br><br>User ID<input type=text value =\"\" name = userid  Size = 20");
out.println("<b><br>password<input type= password value = \"\" name = pwd size=20>");
out.println("<br><br> <input type = submit value=\"Submit\">");
out.println("</form>");
}
}