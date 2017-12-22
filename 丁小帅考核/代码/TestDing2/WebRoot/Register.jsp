<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/reg.css">
	<style>
	 *{
            margin:0px;
            padding:0px;
        }
        .container{
        	width:100%;
        	height:100%;
        	background-color:pink;
        
        }
        a{
            text-decoration: none;
        }
        ul{
            list-style: none;
        }
        body{
            background:rgba(238,238,238,0.5);
           
            background-color: lightblue;
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
        .reg{
            width:450px;
            height:450px;
            background: white;
            position:absolute;
            margin-left:32%;
            margin-top:100px;
            padding:5px 15px; 
        } 
        .reg>.header{
            width:100%;
            padding:10px 0px;
            border-bottom: 1px solid #ccc;
            overflow: hidden;
        }
        .reg>.header>h1{
            font-size:18px;
            font-weight: normal;
            float:left;
        }
        .reg>.header>h1>a{
            padding:5px;
            margin-left:10px;
            color:black;
        }
        .reg>.header>h1>a:first-child{
            margin-left:50px;
        }
          .reg>.header>h1>a:last-child{
            color:#2C689B;
        }
        
        
        .reg>form{
            margin-top:30px;
            padding:0 50px;
        }
        .reg>form>div>input{
            width:350px;
            height:40;
            line-height: 40px;
            padding-left: 5px;
            border:1px solid #d0d6d9;
            background: #F9F9F9;
        }
        .reg>form>div>p{
            width:350px;
            height:25px;
            line-height: 25px;
            font-size: 12px;
        }
        .reg>form>div.idcode>input{
            width:150px;
            margin-right:30px;
            float: left
        }
        .reg>form>div.idcode>span{
            float:right;
            width:80px;
            height:30px;
            margin-top:10px;
            border:1px solid #ccc;

        }
        .reg>form>div.idcode>a{
            float: right;
            color: black;
            font-size: 12px;
            margin-top:25px;
            margin-left: 5px;
        }
        .clear{
            clear:both;
        }
        .btn-red{
            margin:20px 0px;
        }
        #reg-btn{
            width:100%;
            height:50px;
            background:#2C689B;
            border-color:#2C689B;
            text-align: center;
            line-height:50px;
            color:#fff;
            font-size: 17px;
        }
        #reg-btn:hover{
            cursor:pointer;
        }
       
	</style>
  </head>
  
  <body>

    <div class="reg">
        <div class="header">
            <h1>
                <a href="Login.jsp">登录</a>
                <a href="Register.jsp">注册</a>
            </h1>
           
        </div>
        <form action="">
        <table>
            
            <tr>
        <td class="td1">用户名</td>
        <td>
                <input type="text"  class="input1">      
        </td>
        </tr>
            <tr>
        <td class="td1">密码</td>
        <td>
                <input type="text"  class="input1">      
        </td>
        </tr>
           <tr>
        <td class="td1">性别</td>
        <td>
               <RadioGroup> <input type="radio" name="Sex" value="male" >男
                <input type="radio" name="Sex" value="female">女</RadioGroup> 
        </td>
        </tr>
         <tr>
        <td class="td1">上传头像</td>
        <td>
               <input type="file" id="photo" >
        </td>
        </tr>
            <!-- <tr>
        <td class="td1">兴趣爱好</td>
        <td>
               
            <label>
                <input type="checkbox" name="Car">篮球
                <input type="checkbox" name="Car">足球
                <input type="checkbox" name="Car">排球
                <input type="checkbox" name="Car">羽毛球 
                </label>
        </td>
        </tr> -->
             <tr>
        <td colspan="2">
        <div class="btn-red">
                <input type="submit" value="注册" id="reg-btn">
            </div>
        </td>
        </tr>
        </table>
        </form>
    </div>

  </body>
</html>
