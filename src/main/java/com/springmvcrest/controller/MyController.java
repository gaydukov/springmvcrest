package com.springmvcrest.controller;

import com.springmvcrest.entity.Word;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping ("/")
public class MyController {
    @RequestMapping(value = "/hello",method = RequestMethod.GET)
    @ResponseBody
    public Word GetMassega (){
        return getWord();
    }

    private Word getWord() {
        Word word=new Word();
        word.setId(1);
        word.setWord_ru("Привет");
        word.setWord_en("Hello");
        return word;
    }
}
