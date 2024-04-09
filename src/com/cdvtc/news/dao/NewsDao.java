package com.cdvtc.news.dao;

import com.cdvtc.news.model.News;

import java.util.List;

public interface NewsDao {
    /**
     * 获取所有新闻
     * @return
     */
    List<News> getAllNews();
    List<News>  getNewsByCategory(Integer categoryId);
    List<News>getNewsByTag(Integer tagId);
    List<News> getStickNews(int limit);

    News getNewsById(int newsId);

    List<News> getRecommendedNews(int i);

    List<News> getHotNews();

    void updateClickCount(int newsId);
}
