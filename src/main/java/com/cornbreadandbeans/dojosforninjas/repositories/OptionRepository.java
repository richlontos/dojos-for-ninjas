package com.cornbreadandbeans.dojosforninjas.repositories;


import com.cornbreadandbeans.dojosforninjas.models.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface OptionRepository extends CrudRepository<Book, Long> {}

