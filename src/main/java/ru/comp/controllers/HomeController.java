package ru.comp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ru.comp.models.Article;
import ru.comp.services.ArticleService;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

/**
 * Created by Viktor on 05.05.2017.
 */

/**
 * Главный контроллер
 */
@Controller
public class HomeController {
    @Autowired private ArticleService articleService;
    private static String UPLOAD_FOLDER = "/home/SpringUnitBeanTest/src/main/webapp/resources/pictures";
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
    public String addArticle(@ModelAttribute("article") Article article
                             ,@RequestParam("imagefile") MultipartFile imagefile
    ){
        String name = null;
        try
        {
            byte[] bytes = imagefile.getBytes();
            name = imagefile.getOriginalFilename();
            File dir = new File(UPLOAD_FOLDER);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            File uploadedFile = new File(dir.getAbsolutePath() + File.separator + name);

            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(uploadedFile));
            stream.write(bytes);
            stream.flush();
            stream.close();
            article.image = name;
        }
        catch (Exception e) {}
        finally
        {
            if(article.getId() == null)
                articleService.add(article);
            else
                articleService.update(article);

            return "added";
        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteArticle(@RequestParam(required =true) String id) {
        articleService.remove(id);

        return "redirect:/";
    }
}
