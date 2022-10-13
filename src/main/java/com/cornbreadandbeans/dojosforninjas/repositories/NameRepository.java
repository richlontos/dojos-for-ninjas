package com.cornbreadandbeans.dojosforninjas.repositories;

import com.cornbreadandbeans.dojosforninjas.models.Name;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;


@Repository
public interface NameRepository extends CrudRepository<Name,Long> {
    List<Name> findAll();


    Optional<Name> findByGivenname(String name);
}