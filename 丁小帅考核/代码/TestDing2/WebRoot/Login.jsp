<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Login</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/css/login.css">
	<style type="text/css">
	 *{
            margin:0px;
            padding:0px;
        }
        a{
            text-decoration: none;
        }
        ul{
            list-style: none;
        }
        body{
            background:rgba(238,238,238,0.5);
            position:relative;
        /*     font-family: 寰蒋闆呴粦; */
            background-color: lightblue;
        }
        .login{
            width:450px;
            height:380px;
            background: white;
           
            margin-left:32%; 
            /*margin-top:-225px;*/
    		 margin-top:100px;
            padding:5px 15px;
        }
        .login>.header{
            width:100%;
            padding:10px 0px;
            border-bottom: 1px solid #ccc;
            overflow: hidden;
        }
        .login>.header>h1{
            font-size:18px;
            font-weight: normal;
            float:left;
        }
        .login>.header>h1>a{
            padding:5px;
            margin-left:10px;
            color:black;
        }
        .login>.header>h1>a:first-child{
            margin-left:50px;
            color:#2C689B;
        }
        .div1{
            width: 100px;
        }
       
        .login>form{
            margin-top:30px;
            padding:0 50px;
        }
        .input1{
            width:250px;
            height:40;
            line-height: 40px;
            padding-left: 5px;
            border:1px solid #d0d6d9;
            background: #F9F9F9;
        }
        .td1{
            height: 40px;
            width: 100px;
        }
        table{
            padding: 0px;
            margin:0px;
        }
        td{
            padding:5px; 
            margin:10px;
        }
        .login>form>div>p{
            width:350px;
            height:25px;
            line-height: 25px;
            font-size: 12px;
        }
        .login>form>div.idcode>input{
            width:150px;
            margin-right:30px;
            float: left
        }
        .login>form>div.idcode>span{
            float:right;
            width:80px;
            height:30px;
            margin-top:10px;
            border:1px solid #ccc;

        }
        .login>form>div.idcode>a{
            float: right;
            color: black;
            font-size: 12px;
            margin-top:25px;
            margin-left: 5px;
        }
        .clear{
            clear:both;
        }
        .login>form>.autoLogin{
            margin-top:20px;
            font-size:14px;
            line-height:15px;
            color:#999;
            height: 15px;
        }
        .login>form>.autoLogin>label>input{
            margin-right:5px;
        }
        .login>form>.autoLogin>label{
            float:left;
        }
        .login>form>.autoLogin>a{
            float:right;
            color:#666;
            font-size:14px;
        }
        .btn-red{
            margin:20px 0px;
        }
        #login-btn{
            width:100%;
            height:50px;
            background:#2C689B;
            border-color:#2C689B;
            text-align: center;
            line-height:50px;
            color:#fff;
            font-size: 17px;
        }
        #login-btn:hover{
            cursor:pointer;
        }
       
	</style>
  </head>
  
  <body>
    <div class="login">
        <div class="header">
            <h1>
                <a href="Login.jsp">登录</a>
                <a href="Register.jsp">注册</a>
            </h1>
            
        </div>
        <form action="login_regex.jsp">
        <table>
        <tr>
        <td class="td1">用户名</td>
        <td>
                <input name="username" type="text"  class="input1">      
        </td>
        </tr>
         <td class="td1">密码</td>
        <td>
                <input name="pwd" type="password"  class="input1">      
        </td>
        </tr>
          </tr>
         <td class="td1" colspan="2">
                    <input type="checkbox" checked="checked">
                    记住用户名
              
           
         </td>
        
        </tr>
        <tr>
        <td colspan="2">
        <div class="btn-red">
                <input type="submit" value="登录" id="login-btn">
            </div>
        </td>
        </tr>
        </table>
     
        </form>
    </div>

  </body>
</html>
