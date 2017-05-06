package ru.comp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.comp.models.Article;
import ru.comp.services.ArticleService;

/**
 * Created by Viktor on 05.05.2017.
 */

/**
 * Главный контроллер
 */
@Controller
public class HomeController {
    @Autowired private ArticleService articleService;

    /**
     * Гланая страница - получение всех статей
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(){
        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("articles", articleService.getAll());

        return modelAndView;
    }

    /**
     * Вывод формы добавления новой статьи
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView showAddForm(){
        return new ModelAndView("add", "article", new Article());
    }

    /**
     * Добавления новой статьи
     * @param article
     * @return
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addArticle(@ModelAttribute("article") Article article){
        if(article.getId() == null)
            articleService.add(article);
        else
            articleService.update(article);

        return "added";
    }
}
