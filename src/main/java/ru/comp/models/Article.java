package ru.comp.models;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.io.Serializable;

/**
 * Created by Viktor on 05.05.2017.
 */

@Document(collection = Article.COLLECTION_NAME)
public class Article implements Serializable{
    public static final String COLLECTION_NAME = "articles";

    /**
     * id
     */
    @Id
    public String id;

    public String title;
    public String desc;

    public Article(){}
    public Article(String title, String desc)
    {
        this.title = title;
        this.desc = desc;
    }

    @Override
    public String toString()
    {
        return String.format(
                "Article[id=%s, title='%s', desc='%s']",
                id, title, desc);
    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getDesc() {
        return desc;
    }
    public void setDesc(String desc) {
        this.desc = desc;
    }
}
