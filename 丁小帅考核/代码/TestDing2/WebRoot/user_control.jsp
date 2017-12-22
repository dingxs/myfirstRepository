<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息</title>
<style>
body
  			{ 	font-size: 16px;
  				background-size: 100% 120% ;
  				background-image: url(newbg3.jpg);
  				background-repeat:no-repeat;
  			
  			}
  			.input{
				background-image:url(img/camera.png);
				background-repeat: no-repeat;
				background-position: right;
    			background-color: #ffffff;
    			border:solid #4791ff 1px;
    			width: 80%;
    			height: 35px;
    			
				}
			
				.search{
						background-image:url(searchbg.jpg);
						background-repeat: no-repeat;
    					border-width:0px; 
    					width: 100px;
    					height: 35px;
    					/* background-color: #3385ff; */
    				
						}
				.search1{
						background-image:url(add.jpg);
						background-repeat: no-repeat;
    					border-width:0px; 
    					width: 100px;
    					height: 35px;
    					/* background-color: #3385ff; */
    				
						}
						.table1{
						width:100%;
						height:400px;
						
						}
  			</style>
</head>
<body style="text-align:center">
<div>
<form method='post' action="search.jsp">
  <input class="input"  type="text" name="str">
  <input class="search"  type="submit" value="  ">
</form>
<br/>
<form method='post' action="add.jsp">
  <input class="input"  type="text" name="str">
  <input class="search1"  type="submit" value="  ">
</form>
<br/>
</div>
<table class="table1" border="1" cellspacing="0" cellpadding="3">
  <tr>
  <td>工号</td>
     <td>姓名</td>
     <td>性别</td>
    <td>年龄</td>
    <td>出生日期</td>
    <td>部门</td>
    <td>工资</td>
    <td>编辑</td>
    <td>删除</td>

  </tr>
  <%    

	String DRIVER = "com.mysql.jdbc.Driver";
	String URL="jdbc:mysql://localhost:3306/db_ding";
	String USER="root";
	String PASSWORD="root";
	Class.forName(DRIVER);//加载驱动
	Connection conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接 
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	
	//定义四个变量
	int page_persize=4;//每页显示记录数
	int page_total=0;//总的页数
	int page_now=1;//当前页码
	int rs_total=0;//总的记录数
	//产生结果集
	String sql="select * from infor_hengzhi";    	    
	ResultSet rs=stmt.executeQuery(sql); 
	 //计算总的记录数  
	rs.last();//指针到最后一条记录
	rs_total=rs.getRow();//读出当前行号即总的记录数
	//计算总的页数
	if (rs_total % page_persize==0)
		page_total=rs_total/page_persize;
	else
		page_total=rs_total/page_persize+1;
	//计算当前页码
	try{
	if (!(request.getParameter("page_now")==null || request.getParameter("page_now").equals("")))
	page_now=Math.min(Math.abs(Integer.parseInt(request.getParameter("page_now"))),page_total);
	}catch(java.lang.NumberFormatException e){
	out.print("指定页码格式不正确"+e);
	}
	if (page_now==0) page_now=1;

	//指针跳转到要访问的页码的第一条记录
	rs.absolute((page_now-1)*page_persize+1);
	//循环显示当前页码的内容
	for(int i=1;i<=page_persize;i++)
	{
		%>
            <tr>
      		     <td><%=rs.getString(1)%> </td>
    			<td><%=rs.getString(2)%></td>
   	 			<td><%=rs.getString(3)%></td>
   				 <td><%=rs.getString(4)%></td>
   				 <td><%=rs.getString(5)%></td>
   	 			<td><%=rs.getString(6)%></td>
   				 <td><%=rs.getString(7)%></td>
   				 <td><a href="edit.jsp?id=<%=rs.getString("id")%>">编辑</a></td>
			    <td><a href="del.jsp?id=<%=rs.getString("id")%>">删除</a></td>
			    
			   
            </tr>
		<%
	if (!rs.next()) break;//如果记录数不够则中断循环
	}
	//关闭
	rs.close();       
	stmt.close();       
	conn.close();  
%>
</table><br>

<%
//显示页码导航，其中的问号表示由当前页面处理。
out.print("总共"+rs_total+"条记录　");
if (page_total>1){
out.print("当前第"+page_now+"页　");
out.print("共"+page_total+"页　");
if(page_now!=1) {
        out.print("<a href=?page_now=1>首页</a>　");
        out.print("<a href=?page_now="+(page_now-1)+">上一页</a>　");
    }
if(page_now!=page_total){
    out.print("<a href=?page_now="+(page_now+1)+">下一页</a>　");
    out.print("<a href=?page_now="+page_total+">尾页</a>　");
    }
%>
  <form action="?" method="post">
    <!--问号表示由当前页面处理 -->
    <table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
      <tr>
        <td><div align="center">跳转到：
            <input name="page_now" type="text" size="3" />
            <input name="submit" type="submit" value="提交" />
          </div></td>
      </tr>
    </table>
  </form>
  <% } %>

</body>
</html>
 