<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>search</title>
<style>
	body
  			{ 	font-size: 16px;
  				background-size: 1400px 650px ;
  				background-image: url(timg1.jpg);
  				background-repeat:no-repeat;
  			
  			}
</style>
</head>  
<body> 
<a href="read.jsp">点击回到read页面</a>  
<table border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td>序号</td>
    <td>标题</td>
    <td>内容</td>
    <td>类型</td>

  </tr>
<%    
	request.setCharacterEncoding("utf-8"); 
	String str=request.getParameter("str"); 	
	
	String DRIVER = "com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/localhost";
String USER="root";
String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	/* String connectionUrl = "jdbc:mysql://localhost:3306/localhost;databaseName=localhost;user=root;password=2016;"; */
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	/* String sql="select * from news where title like '%"+ str +"%'"; */
	        String sql="select * from news where title like '%"+ str +"%'";
	ResultSet rs=stmt.executeQuery(sql);       
	while(rs.next()) {
%>       
  <tr>
    <td><%=rs.getString(1)%> </td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4) %></td>
	
  </tr>
<%}
	rs.close();       
	stmt.close();       
	conn.close();         
%> 
</table> 
</body>
</html>    
