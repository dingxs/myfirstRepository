<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%
	String id=request.getParameter("id");
String DRIVER = "com.mysql.jdbc.Driver";
String URL="jdbc:mysql://localhost:3306/localhost";
String USER="root";
String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	/* String connectionUrl = "jdbc:mysql://localhost:3306/localhost;databaseName=localhost;user=root;password=2016;"; */
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
/* Class.forName("com.mysql.jdbc.Driver");   
String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=dataBase;user=sa;password=sa;";
Connection conn = DriverManager.getConnection(connectionUrl);      
Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE); */
		String sql="select * from news where id="+ id;       
		ResultSet rs=stmt.executeQuery(sql);  
		rs.next();
%>
<form id="form1" name="form1" method="post" action="update.jsp?id=<%=id%>">
  <label>
  title:
  <input name="title" type="text" id="title" value="<%=rs.getString("title")%>" size="25" />
  </label>
  <p>
    content:
      <textarea name="content" cols="50" rows="15" id="content"><%=rs.getString("content")%></textarea>
  </p>
   <label>
  type:
  <input name="type" type="text" id="type" value="<%=rs.getString("type")%>" size="25" />
  </label>
  <p>
    <label>
    <input type="submit" name="Submit" value="更新" />
    </label>
  </p>
</form>

<%
rs.close();       
stmt.close();       
conn.close();         

%>
</body>
</html>
