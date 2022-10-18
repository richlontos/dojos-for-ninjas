package com.cornbreadandbeans.dojosforninjas.repositories;

import com.cornbreadandbeans.dojosforninjas.models.RentalForm;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RentalFormRepository extends CrudRepository<RentalForm, Long> {
    List<RentalForm> findAll();
}

