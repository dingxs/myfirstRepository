<%@ page contentType="text/html; charset=utf-8" language="java" import="java.util.*,dataconn.*" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录验证</title>
</head>
<body  style="font-size:18px; margin:0px">
<% 
dataconn conn=new dataconn();

request.setCharacterEncoding("utf-8"); 
String username=request.getParameter("username");
String pwd=request.getParameter("pwd");
System.out.println(username);
System.out.println(pwd);
if (username == null || username.equals("") || pwd == null || pwd.equals(""))
{
out.print("用户名或密码不能为空");
out.print("<a href='Login.jsp'>重新登录</a>");
return;
}

String sql="select * from admin where username='"+username+"' and pwd='"+pwd+"'";
ResultSet rs=conn.executeQuery(sql);
System.out.println(sql);
if(rs==null)
{
out.print("用户名或密码错误！<br>");
out.print("<a href='Login.jsp'>重新登录</a>");
}
else
{
//设置了一个session标志"flag"并赋值"ok"，
//它的作用是当下一次打开登录后的页面的时候页面
//会利用这个标志检验是否是用户为登陆状态。
session.setAttribute("flag","ok");
session.setAttribute("admin",username);
rs.close();
response.sendRedirect("user_control.jsp");
}
%>
</body>
</html>
<%

%>