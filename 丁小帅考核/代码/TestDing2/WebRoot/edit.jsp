<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
    <style type="text/css">
        div{
            width:100%;

        }
        textarea{
            font-size: 18px;
        }
        .sub{
            /*   background-image:url(subm.jpg);*/
            background-repeat: no-repeat;
            border-width:1px;
            background-color: #add4b2;
            display: block;
            width:100px;
            height: 45px;
            position: absolute;
            top:530px;
            left:450px;
        }
        input{
            width: 800px;
            height: 25px;
            font-size:18px;
        }
        img{
        
        height:70px;}
    </style>

</head>

<body>
<%
	String id=request.getParameter("id");
    String DRIVER = "com.mysql.jdbc.Driver";
    String URL="jdbc:mysql://localhost:3306/db_ding";
    String USER="root";
    String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

		String sql="select * from infor_hengzhi where id="+ id;
		ResultSet rs=stmt.executeQuery(sql);
		rs.next();
%>
<div>
<form id="form1" name="form1" method="post" action="update.jsp?id=<%=id%>">

      <table>
          <tr>
              <td><img src="ID.jpg"></td>
              <td><input name="id" type="text"  value="<%=rs.getString("id")%>" size="25" /></td>
          </tr>
          <tr>
              <td><img src="NAME.jpg"></td>
              <td><input name="name" type="text" value="<%=rs.getString("name")%>" size="25"/></td>
          </tr>
           <tr>
          <td><img src="GENDER.jpg"></td>
          <td><input name="gender" type="text"  value="<%=rs.getString("gender")%>" size="25" /></td>
      </tr>
       <tr>
          <td><img src="AGE.jpg"></td>
          <td><input name="age" type="text"  value="<%=rs.getString("age")%>" size="25" /></td>
      </tr>
       <tr>
          <td><img src="BIRTHDAY.jpg"></td>
          <td><input name="birthday" type="text"  value="<%=rs.getString("birthday")%>" size="25" /></td>
      </tr>
       <tr>
          <td><img src="WORK.jpg"></td>
          <td><input name="work" type="text" i value="<%=rs.getString("work")%>" size="25" /></td>
      </tr>
       <tr>
          <td><img src="SALARY.jpg"></td>
          <td><input name="salary" type="text"  value="<%=rs.getString("salary")%>" size="25" /></td>
      </tr>
      
      
</table>

</div>
  <p>
    <label>
    <input class ="sub" type="submit" name="Submit" value="更新" />
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
