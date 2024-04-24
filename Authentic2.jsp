<%
String uid = request.getParameter("userid");
String pwd = request.getParameter("pwd");
String uid1 = "SRIRAM";
String uid2 = "SAIRAM"
String uid3 = "SUBBU";
String pwd1 = "123";
String pwd2 = "456";
String pwd3 = "789";
int flag = 0;

if ((uid.equals(uid1)) && (pwd.equals(pwd1))) {
    flag = 1;
}
if ((uid.equals(uid2)) && (pwd.equals(pwd2))) {
    flag = 1;
}
if ((uid.equals(uid3)) && (pwd.equals(pwd3))) {
    flag = 1;
}

if (flag == 1) {
    out.println("<br><br><h2>WELCOME "+ uid + "</h2>");
} else {
    out.println("<br><br><h2>Sorry, you are not an authorized user</h2>");
}
%>