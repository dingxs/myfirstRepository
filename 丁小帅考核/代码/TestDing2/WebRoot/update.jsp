<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新</title>
</head>

<body>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");//应该判断一下id的合法性
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String age=request.getParameter("age");
	String birthday=request.getParameter("birthday");
	String work=request.getParameter("work");
	String salary=request.getParameter("salary");
	
	
	String DRIVER = "com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/db_ding";
	String USER="root";
	String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	String sql="update infor_hengzhi set name='"+ name +"', age='"+ age +"' ,birthday='"+ birthday +"' ,work='"+ work +"' ,gender='"+gender+"'where id='"+id+"'";
	stmt.executeUpdate(sql); 
	stmt.close();       
	conn.close(); 
	response.sendRedirect("user_control.jsp");     
%>

</body>
</html>
