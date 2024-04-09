<%@ page import="com.cdvtc.news.model.Category" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cdvtc.news.dao.CategoryDao" %>
<%@ page import="com.cdvtc.news.dao.impl.CategoryDaoImpl" %>
<%@ page import="com.sun.javafx.image.BytePixelSetter" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%-- Created by IntelliJ IDEA.
  User: admin
  Date: 2024/4/1
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <a href="index.html" class="navbar-brand"></a>
        </div>
        <!-- class="visible-xs-inline-block"：在超小屏幕上显示-->
        <label for="toggle-checkbox" id="toggle-label" class="visible-xs-inline-block">菜单</label>
        <input type="checkbox" class="hidden" id="toggle-checkbox">
        <div class="hidden-xs">
            <ul class="nav navbar-nav">
                <%
                    String id = request.getParameter("id");
//                    String tid = request.getParameter("tid");

                %>
                <li <%if(id==null){%> class="active" <%}%>><a href="index.jsp">首页</a></li>
                <%
                    CategoryDao categoryDao = new CategoryDaoImpl();
                    List<Category> categoryList = categoryDao.getAllCategories();
                    for(Category category: categoryList) {  %>
                <li <%if(id!=null&& Integer.parseInt(id)==category.getId()){%>class="active"<%}%>><a href="index.jsp?id=<%=category.getId()%>"><%=category.getName()%></a></li>
                <%}%>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <%
                    String nickname = (String)session.getAttribute("user");
                    if(nickname != null){
                %>
                <li><a href="#"><%=nickname%></a> </li>

                <li><a href="logout.jsp">退出</a></li>
                <%}else {%>
                    <li><a href="login.jsp">登录</a></li>
                <%}%>
                <li><a href="signup.html">注册</a></li>
            </ul>
        </div>
    </div>
</div>
