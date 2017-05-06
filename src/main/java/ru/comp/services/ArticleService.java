package ru.comp.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.comp.dao.ArticleDao;
import ru.comp.models.Article;

import java.util.List;

/**
 * Created by Viktor on 06.05.2017.
 */
@Service
public class ArticleService {
    @Autowired private ArticleDao articleDao;

    public void add(Article article) {
        articleDao.save(article);
    }

    public void update(Article article) {
        articleDao.save(article);
    }

    public List<Article> getAll() {
        return articleDao.getAll();
    }
}
