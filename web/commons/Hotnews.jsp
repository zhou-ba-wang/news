<%@ page import="com.cdvtc.news.model.News" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cdvtc.news.dao.NewsDao" %>
<%@ page import="com.cdvtc.news.dao.impl.NewsDaoImpl" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/4/1
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="side-bar-card">
    <div class="card-title">24小时热闻</div>
    <div class="card-body">
        <div class="list">
            <%
                NewsDao newsDao =new NewsDaoImpl();
                List<News> HotNewsList =newsDao.getHotNews();
                for(News HotNews:HotNewsList){
            %>
            <div class="item">
                <a class="title" href="news.jsp?id=<%=HotNews.getId()%>"><%= HotNews.getTitle() %></a>
                <div class="desc">

                    <div class="desc"><%=HotNews.getClickCount()%>阅读
                        <%=HotNews.getCommentNum()%>评论</div>
                </div>
            </div>
            <% }%>
        </div>
    </div>
</div>
