<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>增加员工</title>
    <style type="text/css">
        div{
            width:100%;
        }
            input{
            width: 800px;
            height: 25px;
            font-size:18px;
        }
        img{
        height:70px;}
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
    </style>
</head>

<body>
<form id="form1" name="form1" method="post" action="save.jsp">
 <table>
 <tr>
  <td><img src="ID.jpg"></td>
  <td><input name="id" type="text"  /></td>
  </tr>
   <tr>
 <td><img src="NAME.jpg"></td>
 <td> <input name="name" type="text"  size="25" /></td>
    </tr>
   <tr>
 <td><img src="GENDER.jpg"></td>
 <td> <input name="gender" type="text"   size="25" /></td>
    </tr>
     <tr>
 <td><img src="AGE.jpg"></td>
 <td> <input name="age" type="text"   size="25" /></td>
  </tr>
  <tr>
 <td><img src="BIRTHDAY.jpg"></td>
 <td> <input name="birthday" type="text"   size="25" /></td>
  </tr>
    <tr>
 <td><img src="WORK.jpg"></td>
 <td> <input name="work" type="text"   size="25" /></td>
  </tr>
    <tr>
 <td><img src="SALARY.jpg"></td>
 <td> <input name="salary" type="text"   size="25" /></td>
    </tr>
  </table>
   
    <input class="sub"  type="submit" name="Submit" value="提交" />

 
</form>
</table>
</body>
</html>
