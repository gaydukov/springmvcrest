package com.springmvcrest.service;

import com.springmvcrest.entity.Word;
import com.springmvcrest.repositories.WordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WordServiceImpl implements WordService {
    @Autowired
    private WordRepository wordRepository;

    public List<Word> getAll() {
        return wordRepository.findAll();
    }

    public Word getById(Long id) {
        return wordRepository.findOne(id);
    }

    public Word save(Word word) {
        return wordRepository.saveAndFlush(word);
    }

    public void remove(Long id) {

        wordRepository.delete(id);
    }


}
