package com.springmvcrest.controller;

import com.springmvcrest.entity.Word;
import com.springmvcrest.repositories.WordRepository;
import com.springmvcrest.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@RestController
public class MyController {

    @Autowired
    private WordService service;

    @RequestMapping (value = "/", method = RequestMethod.GET)
    @ResponseBody
    public ModelAndView Home(){
        return new ModelAndView("home","Word",new Word());
    }

    @RequestMapping(value = "/words",method = RequestMethod.GET)
    //@GetMapping(value ="/words")
    @ResponseBody
    public List<Word> getAllWords (){
        List<Word> words=service.getAll();
        return words;
    }

    @RequestMapping(value = "/word/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Word getWord (@PathVariable("id") Long wordId){
        return service.getById(wordId);
    }

    //@RequestMapping(value = "/word",method = RequestMethod.GET)
    //@ResponseBody
    //public Word getWord (HttpServletRequest request){
        //long wordId=Integer.parseInt(request.getParameter("wordid"));
        //return service.getById(wordId);
    //}

    @RequestMapping(value = "/words",method = RequestMethod.POST)
    //@ResponseBody
    public Word saveWord (@ModelAttribute("Word") Word word){
        return service.save(word);
    }

    @RequestMapping(value = "/words",method = RequestMethod.DELETE)
    @ResponseBody
    public void deleteWord (HttpServletRequest request){
        long id=Integer.parseInt(request.getParameter("wordid"));
        service.remove(id);
    }

    @RequestMapping(value = "/words/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public void deleteWord (@PathVariable Long id){
        service.remove(id);
    }
}
