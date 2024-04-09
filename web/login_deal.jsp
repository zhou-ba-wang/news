<%@ page import="com.cdvtc.news.dao.UserDao" %>
<%@ page import="com.cdvtc.news.dao.impl.UserDaoImpl" %>
<%@ page import="com.cdvtc.news.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2024/4/8
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //获取参数
    UserDao userDao = new UserDaoImpl();

    String account = request.getParameter("account");
    String password = request.getParameter("password");
     User user =   userDao.login(account,password);
    //验证账户密码
    if(user != null){
        response.sendRedirect("index.jsp");//页面跳转
      //  request.setAttribute("nickname","管理员");
        session.setAttribute("user",user.getNickname());
    }else{//验证失败

        request.setAttribute("error","账号或密码错误。");
        request.getRequestDispatcher("login.jsp").forward(request,response);//页面跳转，返回登录页面

    }
%>
</body>
</html>
