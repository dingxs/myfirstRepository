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
  			table{
  			width:100%;
  			}
</style>
</head>  
<body> 
<a href="user_control.jsp">点此查看全部人员信息</a>  
<table border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td>工号</td>
    <td>姓名</td>
    <td>性别</td>
    <td>年龄</td>
    <td>出生日期</td>
    <td>部门</td>
    <td>工资</td>

  </tr>
<%    
	request.setCharacterEncoding("utf-8"); 
	String str=request.getParameter("str"); 	
	
	String DRIVER = "com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/db_ding";
	String USER="root";
	String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	        String sql="select * from infor_hengzhi where name like '%"+ str +"%'";
	ResultSet rs=stmt.executeQuery(sql);       
	while(rs.next()) {
%>       
  <tr>
    <td><%=rs.getString(1)%> </td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4) %></td>
	 <td><%=rs.getString(5)%> </td>
    <td><%=rs.getString(6)%></td>
    <td><%=rs.getString(7)%></td>
	
  </tr>
<%}
	rs.close();       
	stmt.close();       
	conn.close();         
%> 
</table> 
</body>
</html>    
