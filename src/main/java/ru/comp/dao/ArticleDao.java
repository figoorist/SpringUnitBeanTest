package ru.comp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;
import ru.comp.models.Article;

import java.util.List;

/**
 * Created by Viktor on 06.05.2017.
 */
@Repository
public class ArticleDao {
    @Autowired private MongoOperations mongoOperations;

    public void save(Article article) {
        mongoOperations.save(article);
    }

    public List<Article> getAll() {
        return mongoOperations.findAll(Article.class);
    }
}
