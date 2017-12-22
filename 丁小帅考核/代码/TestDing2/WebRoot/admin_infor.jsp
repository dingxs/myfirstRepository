<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息</title>

</head>
<body >
<table  border="1" cellspacing="0" cellpadding="3">
  <tr>
  <td>username</td>
  <td>username</td>
     <td>姓名</td>
     
  </tr>
  <%    

	String DRIVER = "com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/db_ding";
	String USER="root";
	String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	
	String sql="select * from admin";    	    
	ResultSet rs=stmt.executeQuery(sql); 
	 
		%>
            <tr>
      		     <td><%=rs.getString(1)%> </td>
    			<td><%=rs.getString(2)%></td>
    			<td><%=rs.getString(3)%></td>
   	 			
			    
			   
            </tr>
		<%
	
	
	rs.close();       
	stmt.close();       
	conn.close();  
%>
</table><br>


  

</body>
</html>
 