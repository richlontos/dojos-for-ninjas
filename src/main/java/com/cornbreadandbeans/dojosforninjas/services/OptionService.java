package com.cornbreadandbeans.dojosforninjas.services;

import com.cornbreadandbeans.dojosforninjas.models.Book;
import com.cornbreadandbeans.dojosforninjas.repositories.OptionRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OptionService {

    private final OptionRepository optionRepository;

    public OptionService(OptionRepository optionRepository) {
        this.optionRepository = optionRepository;
    }


    public void create(Book book) {
        optionRepository.save(book);
    }

    public List<Book> getAll() {
        return (List<Book>) optionRepository.findAll();
    }

    public Book getOne(Long id) {
        Optional<Book> book = optionRepository.findById(id);
        return book.orElse(null);
    }

    public void update(Book book) {
        optionRepository.save(book);
    }

    public void destroy(Book book) {
        optionRepository.delete(book);
    }
}
