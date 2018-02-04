package com.springmvcrest.service;


import com.springmvcrest.entity.Word;

import java.util.List;

public interface WordService {
    List<Word> getAll();
    Word getById(Long id);
    Word save(Word word);
    void remove(Long id);
}
