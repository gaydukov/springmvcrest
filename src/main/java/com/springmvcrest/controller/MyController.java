package com.springmvcrest.controller;

import com.springmvcrest.entity.Word;
import com.springmvcrest.repositories.WordRepository;
import com.springmvcrest.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
public class MyController {

    @Autowired
    private WordService service;

    @RequestMapping(value = "/words",method = RequestMethod.GET)
    @ResponseBody
    public List<Word> getAllWords (){
        List<Word> words=service.getAll();
        return words;
    }

    @RequestMapping(value = "/words/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Word getWord (@PathVariable("id") Long wordId){
        return service.getById(wordId);
    }

    @RequestMapping(value = "/words",method = RequestMethod.POST)
    @ResponseBody
    public Word saveWord (@RequestBody Word word){
        return service.save(word);
    }

    @RequestMapping(value = "/words/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public void deleteWord (@PathVariable Long id){
        service.remove(id);
    }
}
